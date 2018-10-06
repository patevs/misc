// global react and react-dom import
import React from 'react';
import ReactDOM from 'react-dom';

// import font awesome
//import { library } from '@fortawesome/fontawesome-svg-core'
//import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
//import { faStroopwafel } from '@fortawesome/free-solid-svg-icons'

// import jumbotron component
import Jumbo from './Jumbo/Jumbo';

// import main style sheet
import './index.css';

import * as serviceWorker from './serviceWorker';

// add svg icons to font awesome library
//library.add(faStroopwafel);

// render react components; Jumbo
ReactDOM.render(<Jumbo />, document.getElementById('jumbo'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
