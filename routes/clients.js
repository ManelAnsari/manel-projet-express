var express = require('express');
var router = express.Router();
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'agence'
//   ,port:3306
});
 


router.get('/', function(req, res, next) {
    connection.query('SELECT * from  client', function (error, results, fields) {
      console.log(results)
      res.render('clients', { list: results, listLength:results.length} );
    });
    
});



router.post('/delete', function(req, res, next) {


  connection.query('delete  from  client where id ='+req.body.idValue , function (error, results, fields) {
    res.redirect('/clients');
  });
  
});


router.post('/upsert', function(req, res, next) {
var obj=req.body;

var dataClient=[]

dataClient[0]=obj.id?obj.id:0 
dataClient[1]=obj.cin
dataClient[2]=obj.nom
dataClient[3]=obj.prenom
dataClient[4]=obj.tel

console.log(dataClient)

var query=mysql.format("INSERT INTO client (id,cin,nom,prenom,tel) values ( ?,  ?,  ?,  ?,  ? )  "+
" ON DUPLICATE KEY UPDATE cin=values(cin),nom=values(nom),prenom=values(prenom),tel=values(tel) "
,dataClient);
 
connection.query(query, function (error, results, fields) {
  res.redirect('/clients');
});

});



module.exports = router;
