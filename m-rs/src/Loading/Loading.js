
// react component library import
import React, { Component } from 'react';

// import bootstrap component; image
import { Image } from 'react-bootstrap'

// import loading component style sheet
import './Loading.css';

// Loading react component
class Loading extends Component {

  render() {
    return (
      <div className="Loading">

        <div id="load">
          <Image id="load-img" src="./assets/imgs/loading.png" alt="page loading animation" />
        </div>

      </div>
    );
  }

}

export default Loading;
