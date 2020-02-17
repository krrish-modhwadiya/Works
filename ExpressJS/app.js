var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mysql=require('mysql');
var bodyParser = require('body-parser');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  res.status(err.status || 500);
  res.render('error');
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

var con = mysql.createConnection({
  host : 'localhost',
  user : 'root',
  password : 'root',
  database : 'sampledb'
})

con.connect(function(error){
  if(error){
      console.log('Error');
  }else {
      console.log('Connected');
  }
})

app.get('/view', function(req, res){
  con.query("select * from sampletb", function(error, rows){
    if(error){
      return res.send('Error');
    }else{
      return res.send(rows);
    }

  });
})

app.post('/insert', function (req, res) {
  var user = req.body;
  con.query("INSERT INTO sampledb.sampletb SET ?", user, function (error) {
      if (error) throw error;
      return res.send('Record inserted successfully');
  });
});

app.put('/update', function(req, res){
  var user = req.body;
  var user_id = req.body.id;
  con.query("update sampledb.sampletb set? where id=?", [user, user_id], function(error){
      if(error) throw error;
      res.send('Record updated successfully');
  });
});

app.delete('/delete', function(req, res){
  var user_id = req.body.id;
  con.query("delete from sampledb.sampletb where id = ?", user_id, function(error){
      if(error) throw error;
      res.send('Record deleted successfully');
  })
});

module.exports = app;