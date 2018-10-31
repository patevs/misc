
// react component library import
import React, { Component } from 'react';

import { Pane, Text } from 'evergreen-ui';

// import evergreentron style sheet
import './Evergreen.css';

// evergreen Header react component
class Evergreen extends Component {
  render() {
    return (
      <div className="Evergreen">
        <h1> evergreen </h1>
        <Pane
          height={120}
          width={240}
          display="flex"
          alignItems="center"
          justifyContent="center"
          border="default"
        >
          <Text>Pane</Text>
        </Pane>
      </div>
    );
  }
}

export default Evergreen;
