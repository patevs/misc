import React, { Component } from 'react';

import { Jumbotron } from 'react-bootstrap'

import './Jumbo.css';

class Jumbo extends Component {
  render() {
    return (
      <div className="Jumbo">

		<Jumbotron id="tron">
		  <img src="./assets/imgs/jumbo.png" alt="jumbo header" responsive="true" />
		</Jumbotron>	

      </div>
    );
  }
}

export default Jumbo;
