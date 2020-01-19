var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Capusin sans mouse  eskander', date:new Date() } );
});

module.exports = router;
