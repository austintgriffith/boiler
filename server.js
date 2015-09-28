var http = require('http');
module.exports = {
  port:8888,
  init:function(app){
    app.get('/', function (req, res) {
        res.send("hello");
    });
  }
};
