
/*
  src/boot/setup.js
  Setup Component
*/

// imports
import React, { Component } from 'react';
import { Container } from 'native-base';

import MainHeader from '../components/MainHeader';
import MainContent from '../components/MainContent';
import MainFooter from '../components/MainFooter';

// Setup Component Class
export default class Setup extends Component {
  render() {
    return (
      <Container>
        <MainHeader />
        <MainContent />
        <MainFooter />
      </Container>
    );
  }
}
