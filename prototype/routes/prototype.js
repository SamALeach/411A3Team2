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

router.post('/search', function(req, res, next) {
    request.get(`https://api.opentripmap.com/0.1/en/places/geoname?name=${req.body.search}&apikey=5ae2e3f221c38a28845f05b6170581c1ae28d0679637cd84a6811dbb`, function callback(err, httpResponse, body){
        const info = JSON.parse(body)
        var name = req.body.search
        var longitude = info.lon
        var latitude = info.lat
        request.get(`https://api.opentripmap.com/0.1/en/places/autosuggest?name=${name}&radius=2400&lon=${longitude}&lat=${latitude}&apikey=5ae2e3f221c38a28845f05b6170581c1ae28d0679637cd84a6811dbb`, function callback(err, httpResponse, body){
            res.render('index', {search_result: body}); //
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
