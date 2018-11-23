
/*
  src/components/MainContent.js
  MainContent Component
*/

// imports
import React, { Component } from 'react';
import { Content, Card, CardItem, Body, Text } from 'native-base';

// MainContent Component Class
export default class MainContent extends Component {
  render(){
    return(
      <Content padder>
        <Text> CONTENT SECTION SAMPLE TEXT </Text>
        <Card>
          <CardItem>
            <Body>
              <Text>
                // CARD TEXT
              </Text>
            </Body>
          </CardItem>
        </Card>
      </Content>
    );
  }
}
