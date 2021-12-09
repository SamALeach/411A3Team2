const passport = require('passport');
const GoogleStrategy = require('passport-google-oauth').OAuth2Strategy;

passport.serializeUser(function(user, done) {
    done(null, user);
});

passport.deserializeUser(function(id, done) {
    // link db
    /*
    User.findById(id, function(err, user) {
        done(err, user);
    }); */
    done(null,id);
});

passport.use(new GoogleStrategy({
        clientID: "298748580305-midgte1c8blpphu4eltjl92i81jmdcsm.apps.googleusercontent.com",
        clientSecret: "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",
        callbackURL: "http://localhost:3000/google/callback"
    },
    function(accessToken, refreshToken, profile, done) {
    // link database to store user info
        /* User.findOrCreate({ googleId: profile.id }, function (err, user) {
            return done(err, user);
        }); */
        return done(null, profile)
    }
));