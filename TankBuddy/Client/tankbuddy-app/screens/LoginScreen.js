import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

import {loginUser} from '../api/firebase';

export default class LoginScreen extends React.Component {
  static navigationOptions = {
    title: "Login"
  }
  login = () => {
    loginUser({email: 'test@test.com', password: 'password'})
      .then(user => {
      })
  }
  render () {
    return (
      <View style={styles.container}>
        <Text>Login</Text>
        <Button title="Aye" onPress={() => this.login()} />
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