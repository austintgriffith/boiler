module.exports = {
  get: function(url,success,error){
    var request = new XMLHttpRequest();
    request.open('GET', url, true);
    request.onload = function() {
      if (request.status >= 200 && request.status < 400) {
        success(request.responseText);
      } else {
        error("We reached our target server, but it returned an error");
      }
    };
    request.onerror = function() {
      error("There was a connection error of some sort");
    };
    request.send();
  }
};
