var express = require('express');
var router = express.Router();

var connect = require('../utils/sqlConnect');

/* GET home page. */
router.get('/', function(req, res, next) {

  connect.query(`SELECT id, shortname, poster FROM movies`, (err, movies) => {

    if (err) {
      console.log(err);
      throw err;
    }

    res.render('index', {
      title: 'Home',
      movies: movies
    });

  });

});

module.exports = router;
