
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

  // display the login form
  displayLogin(){

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

/*
<div class="container">

  <form class="form-signin">
    <h2 class="form-signin-heading">Please sign in</h2>
    <label for="inputEmail" class="sr-only">Email address</label>
    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
    <div class="checkbox">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
  </form>

</div> <!-- /container -->
*/
