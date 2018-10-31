
/*
  src/app/components/Evergreen/Evergreen.test.js
  evergreen react component tests
*/

// react and react-dom libraries
import React from 'react';
import ReactDOM from 'react-dom';

// evergreen component
import Evergreen from './Evergreen';

// test cases
it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Evergreen />, div);
  ReactDOM.unmountComponentAtNode(div);
});
