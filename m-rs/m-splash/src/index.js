// global react and react-dom import
import React from 'react';
import ReactDOM from 'react-dom';

// import jumbotron component
import Jumbo from './Jumbo/Jumbo';
// import loading component
import Loading from './Loading/Loading';
// import login component
import Login from './Login/Login';
// import footer component
import Footer from './Footer/Footer';

// import main style sheet
import './index.css';

// import service worker
import * as serviceWorker from './serviceWorker';

// render react components; Jumbo, Loading, Footer
ReactDOM.render(<Jumbo />, document.getElementById('jumbo'));
ReactDOM.render(<Loading />, document.getElementById('loading'));
ReactDOM.render(<Login />, document.getElementById('login'));
ReactDOM.render(<Footer />, document.getElementById('footer'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
