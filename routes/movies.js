var express = require('express');
var router = express.Router();

var moment = require('moment');

var connect = require('../utils/sqlConnect');

router.get('/:movie_id', function(req, res, next) {

  var movie_id = req.params.movie_id;

  connect.query(`SELECT id, shortname, poster FROM movies`, (err, movies) => {

    if (err) {
      console.log(err);
      throw err;
    }

    connect.query(`SELECT * FROM movies WHERE id=${movie_id}`, (err, movie) => {

      if (err) {
        console.log(err);
        throw err;
      }
  
      movie = movie[0];
      movie.releasedate = moment(movie.releasedate).format('ll');
  
      connect.query(`SELECT * FROM characters WHERE movie_id=${movie_id}`, (err, characters) => {
  
        if (err) {
          console.log(err);
          throw err;
        }

        movies = movies.map((movie) => {
          movie.selected = movie.id == movie_id;
          return movie;
        });
  
        movie.characters = characters;
  
        res.render('movie', {
          title: movie.name,
          movie: movie,
          movies: movies
        });
  
      });
  
    });

  });

});

module.exports = router;
