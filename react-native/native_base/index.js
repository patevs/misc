
/*
  Application entry point
*/

import { AppRegistry } from 'react-native';

// main app component
import App from './App';
import { name as appName } from './app.json';

AppRegistry.registerComponent(appName, () => App);
