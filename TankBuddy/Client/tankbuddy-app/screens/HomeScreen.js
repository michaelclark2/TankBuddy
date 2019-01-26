import React from 'react';
import { View, Text, Button, StyleSheet, AsyncStorage } from 'react-native';

import {logoutUser} from '../api/firebase';
import {authenticate} from '../api/auth';

export default class HomeScreen extends React.Component {
  state = {
    user: {}
  }
  static navigationOptions = {
    title: "Home"
  }
  componentDidMount () {
    this.authenticateUser()
  }
  authenticateUser = () => {
    AsyncStorage.getItem('token')
      .then(token => {
        authenticate(token)
          .then(user => {
            this.setState({user})
          }).catch(console.error)

      });
  }
  logout = () => {
    logoutUser();
  }
  render () {
    return (
      <View style={styles.container}>
        <Text>Hello World!</Text>
        <Text>Username: {this.state.user.name}</Text>
        <Button title="Aye" onPress={() => this.logout()} />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});