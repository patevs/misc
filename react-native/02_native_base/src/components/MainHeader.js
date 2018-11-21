
/*
  src/components/MainHeader.js
  MainHeader Component
*/

// imports
import React, { Component } from 'react';
import { Container, Header, Left, Body, Title, Right, Button, Icon } from 'native-base';

// MainHeader Component Class
export default class MainHeader extends Component {
  render(){
    return(
      <Container>
        <Header noLeft>
          <Left />
          <Body>
            <Title> M8Fr8 </Title>
          </Body>
          <Right>
            <Button transparent>
              <Icon name='menu' />
            </Button>
          </Right>
        </Header>
      </Container>
    );
  }
}
