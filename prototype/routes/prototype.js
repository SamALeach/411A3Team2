var fetch = require('node-fetch');
var express = require('express');
var router = express.Router();
var request = require('request');

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


/* router.post('/search', function(req, res, next) {
    request.get(`https://api.opentripmap.com/0.1/en/places/geoname?apikey=5ae2e3f221c38a28845f05b6170581c1ae28d0679637cd84a6811dbb`, function callback(err, httpResponse, body){
        res.render('index', {search_result: body}); //${req.body.search}
    })
}); */



router.get
module.exports = router;
