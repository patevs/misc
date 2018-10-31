
/*
  src/app/components/Evergreen/Evergreen.js
  evergreen react component
*/

// react component library
import React, { Component } from 'react';
// evergreen ui library
import { Pane, Text, Button } from 'evergreen-ui';

// evergreen style sheet
import './Evergreen.css';

// evergreen component class
class Evergreen extends Component {
  render() {
    return (
      <div className="Evergreen">
        <h2> -- evergreen-ui -- </h2>
        <Pane id="panes" clearfix>
          <Pane
            elevation={1}
            height={120}
            width={240}
            display="flex"
            alignItems="center"
            justifyContent="center"
            flexDirection="column"
            border="default"
            margin={5}
            float="left"
          >
            <Text>Text Pane</Text>
            <Text size={300}>Elevation 1</Text>
          </Pane>
          <Pane
            elevation={2}
            height={120}
            width={240}
            display="flex"
            alignItems="center"
            justifyContent="center"
            flexDirection="column"
            border="default"
            margin={5}
            float="left"
          >
            <Button>Button Pane</Button>
            <Text size={300}>Elevation 2</Text>
          </Pane>
      </Pane>
      </div>
    );
  }
}

export default Evergreen;
