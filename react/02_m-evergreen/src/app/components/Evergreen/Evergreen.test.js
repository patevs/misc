import React from 'react';
import ReactDOM from 'react-dom';
import Evergreen from './Evergreen';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Evergreen />, div);
  ReactDOM.unmountComponentAtNode(div);
});
