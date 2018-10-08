
// react component library import
import React, { Component } from 'react';

// import bootstrap components; ButtonToolbar, Button
import { ButtonToolbar, Button } from 'react-bootstrap'

// import Login style sheet
import './Login.css';

// Login react component
class Login extends Component {

  //* TODO: button click handle *//
  constructor(props) {
    super(props);
    this.handleLoad = this.handleLoad.bind(this);
  }

  componentDidMount() {
    window.addEventListener('load', this.handleLoad);
  }

  handleLoad() {
    setTimeout(function () {
      var elem = document.querySelector('.Login');
      elem.style.opacity = 1;
    }, 2000);
  }

  render() {
    return (
      <div className="Login">
        <ButtonToolbar id="load-btns">
          <Button bsStyle="success" bsSize="large">
            Login
          </Button>
          <Button bsSize="large">
            Signup
          </Button>
        </ButtonToolbar>
      </div>
    );
  }
}

export default Login;
