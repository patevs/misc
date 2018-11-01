
/*
  src/app/App/App.js
  app react component
*/

// import react component lib
import React, { Component } from 'react';
// import evergreen-ui components libs
import { Pane, Heading } from 'evergreen-ui';
// import app component styles
import './App.css';

// App component class
class App extends Component {
  render() {
    return (
      <div className="App">
        <Pane>
          <Heading size={900}>--- 03 : M_ui ---</Heading>
          <Heading size={700} marginTop="default">-- sub-title --</Heading>
        </Pane>
      </div>
    );
  }
}

export default App;
