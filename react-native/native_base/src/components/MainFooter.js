
/*
  src/components/MainFooter.js
  MainFooter Component
*/

// imports
import React, { Component } from 'react';
import { Footer, FooterTab, Button, Text } from 'native-base';

// MainFooter Component Class
export default class MainFooter extends Component {
  render(){
    return(
      <Footer>
        <FooterTab>
          <Button full>
            <Text> Footer </Text>
          </Button>
        </FooterTab>
      </Footer>
    );
  }
}
