import React from 'react';
import { View, Text, Button, StyleSheet, AsyncStorage } from 'react-native';

import {logoutUser} from '../api/firebase';
import {authenticate} from '../api/auth';

export default class HomeScreen extends React.Component {
  state = {
    user: {}
  }
  static navigationOptions = {
    title: "TankBuddy"
  }
  componentDidMount () {
    this.authenticateUser();
  }

  showUserTanks = () => {
    const {user} = this.state;
    if (user.tanks && user.tanks.length) {
      return user.tanks.map(t => <Text>{t.name}</Text>);
    }
    else {
      return (
        <View>
          <Text>Add a tank to get started!</Text>
          <Button title="Add New Tank" onPress={() => this.props.navigation.push('AddTank', {userId: this.state.user.id})} />
        </View>
      )
    }
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
  render () {
    return (
      <View style={styles.container}>
        { this.showUserTanks() }
        <Text>Username: {this.state.user.name}</Text>
        <Button title="Logout" onPress={logoutUser} />
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