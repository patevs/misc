
/*
  index.js
  Application entry point
*/

// imports
import { AppRegistry } from 'react-native';

// main app component and config
import App from './App';
import { name as appName } from './app.json';

AppRegistry.registerComponent(appName, () => App);
