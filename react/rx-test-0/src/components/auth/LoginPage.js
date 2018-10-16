// import react Component library
import React, { Component } from 'react';

import OktaSignIn from '@okta/okta-signin-widget';

// LoginPage Component
class LoginPage extends Component {

  constructor(){
    super();
    this.state = { user: null };
    this.widget = new OktaSignIn({
        baseUrl: 'https://dev-613272.oktapreview.com',
        clientId: '0oagk0kmknVnF2xLE0h7',
        redirectUri: 'http://localhost:3000',
        authParams: {
          issuer: 'default',
          responseType: 'id_token'
        }
      });
  }

  componentDidMount(){
    this.widget.renderEl({el:this.loginContainer},
      (response) => {
        this.setState({user: response.claims.email});
      },
      (err) => {
        console.log(err);
      }
    );
  }

  // render method
  render() {
    return (
      <div className="LoginPage">
        <h1> Login Please </h1>
        <div>
          {this.state.user ? (
            <div className="container">
              <div>Welcome, {this.state.user}!</div>
              <button onClick={this.logout}>Logout</button>
            </div>
          ) : null}
          {this.state.user ? null : (
            <div ref={(div) => {this.loginContainer = div; }} />
          )}
        </div>
      </div>
    );
  }

}

export default LoginPage;
