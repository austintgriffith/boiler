var http = require('http');
module.exports = {
  port:8888,
  init:function(app){
    app.get('/backend', function (req, res) {
        res.send("hello");
    });
  }
};
