const fetch = require('node-fetch');
const express = require('express');
const router = express.Router();
const request = require('request');
const passport = require('passport')
const cookieSession = require('cookie-session')
require('./passport-setup')

router.get('/', function(req, res, next) {
    res.render('index');
});

// router.get('/dataenter', function(req, res, next){
//     res.redirect('/views/entering_in_data');
// })

// router.post('/create', (req, res, next) => {
//     const user = req.body
//     db.User.create({
//         username: user.username,
//         password = user.password,
//     })
//     // return res.redirect('/entering_in_data');
// });

router.post('/search', function(req, res, next) {
    request.get(`https://api.opentripmap.com/0.1/en/places/geoname?name=${req.body.search}&apikey=5ae2e3f221c38a28845f05b6170581c1ae28d0679637cd84a6811dbb`, function callback(err, httpResponse, body){
        //output dictionary
        var output = []

        //parse data from user input
        const info = JSON.parse(body)
        console.log(req.body)

        //declaring variables based off api call
        var name = req.body.search
        var longitude = info.lon
        var latitude = info.lat

        //second api call to get specific info based off user input
        request.get(`https://api.opentripmap.com/0.1/en/places/autosuggest?name=${name}&radius=2400&lon=${longitude}&lat=${latitude}&apikey=5ae2e3f221c38a28845f05b6170581c1ae28d0679637cd84a6811dbb`, function callback(err, httpResponse, body){
            console.log(body)
            //parse data from api call
            const info2 = JSON.parse(body)
            // console.log(info2.features.length)

            //nested loop to go through json chunk to find all locations that
            //correlate with inputted user interests
            for(let i = 0; i < info2.features.length; i++){
                //split input by comma to parse through different interest areas accurately
                let prop = info2.features[i].properties.kinds.split(',');
                name_list = []
                for(let j = 0; j < prop.length; j++){
                    //data structure to be inputted into output with relevant data
                    output_member = {}
                    //list to hold all place names used to avoid duplicates
                    
                    // console.log(req.body.interest)
                    // console.log(req.body.interest.includes("Churches"))
                    //series of if statements to check if the location has an inputted interest
                    if((prop[j] == "churches" || prop[j] == "religion" || prop[j] == "cathedrals" || prop[j] == "mosques") && req.body.interest.includes("Religion/Churches")){
                        //if statement to check if location is alreay there, if so add the interest
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Religion/Churches'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        
                        name_list.push(info2.features[i].properties.name)
                        
                    }else if(prop[j] == "historic_architecture" && req.body.interest.includes("Historic Architecture")){
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Historic Architecture'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        name_list.push(info2.features[i].properties.name)
                        
                    }else if((prop[j] == "foods" || prop[j] == "restaurants" ) && req.body.interest.includes("Restaurants/Food")){
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Restaurants/Food'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        name_list.push(info2.features[i].properties.name)
                    }else if(prop[j] == "tourist_facilities" && req.body.interest.includes("Tourist Facilities")){
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Tourist Facilities'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        name_list.push(info2.features[i].properties.name)
                    }else if(prop[j] == "skyscrapers" && req.body.interest.includes("Skyscrapers")){
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Skyscrapers'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        name_list.push(info2.features[i].properties.name)
                    }else if(prop[j] == "museums" && req.body.interest.includes("Museums")){
                        if(!name_list.includes(info2.features[i].properties.name)){
                            output_member["Name"] = info2.features[i].properties.name
                            output_member["Interest"] = 'Museums'
                            output_member["Location"] = info2.features[i].geometry.coordinates
                            output.push(output_member)
                        }
                        name_list.push(info2.features[i].properties.name)
                    }
                    
                }
            }
            console.log(output)
            res.render('index', {output});
        })
    })
});

router.use(cookieSession({
    name: 'session',
    keys: ['key1','key2']
}))

const loginCheck = (req, res, next) => {
    if (req.user) {
        next()
    } else {
        res.sendStatus(401);
    }m
}

router.use(passport.initialize())
router.use(passport.session())

router.get('/failed', (req,res) => res.send('Login failed'))
router.get('/success',  loginCheck, (req,res) => res.send(`Welcome ${req.user.displayName}!`))

router.get('/google', passport.authenticate('google', { scope: ['profile', 'email'] }));

router.get('/google/callback', passport.authenticate('google', { failureRedirect: '/failed' }),
    function(req, res) {
        res.redirect('/success');
    });

router.get('/logout', (req,res) => {
    req.session = null
    req.logout()
    res.redirect('/')
})

router.get
module.exports = router;
