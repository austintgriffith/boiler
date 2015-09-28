var React = require('react');
var Http = require('./http.js');
var Main = React.createClass({
  getInitialState: function(){
    return {backendResponse:"loading..."};
  },
  componentDidMount: function(){
    Http.get("/backend",function(data){
      this.setState({backendResponse:data});
    }.bind(this));
  },
  render: function(){
    return (
      <div>
        Hello World!
        <div>
          The backend says <b>{this.state.backendResponse}</b>.
        </div>
      </div>
    );
  }
});
React.render(
  <Main />,
  document.getElementById('content')
);
