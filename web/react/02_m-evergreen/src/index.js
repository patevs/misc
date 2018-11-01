
/*
  src/index.js
*/

// global react and react-dom import
import React from 'react';
import ReactDOM from 'react-dom';

// import main style sheet
import './index.css';

// import jumbo component
import Jumbo from './app/components/Jumbo/Jumbo';
// import app component
import App from './app/App/App';
// import evergreen component
import Evergreen from './app/components/Evergreen/Evergreen';

// import service worker
import * as serviceWorker from './serviceWorker';

// render jumbo component
ReactDOM.render(<Jumbo />, document.getElementById('jumbo'));
// render app component
ReactDOM.render(<App />, document.getElementById('root'));
// render evergreen component
ReactDOM.render(<Evergreen />, document.getElementById('evergreen'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
