import React from 'react';
import { View, StyleSheet, AsyncStorage, StatusBar } from 'react-native';
import {Button, Text} from 'react-native-elements';

import {logoutUser} from '../api/firebase';
import {authenticate} from '../api/auth';
import TankList from '../components/TankList';

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

        </View>
      )
    }
  }

  authenticateUser = () => {
    AsyncStorage.getItem('token')
      .then(token => {
        authenticate(token)
          .then(user => {
            AsyncStorage.setItem('metric', JSON.stringify(user.metric));
            this.setState({user})
          }).catch(console.error)

      });
  }
  render () {
    const {user} = this.state;
    return (
      <View style={styles.container}>
        <TankList navigation={this.props.navigation} tanks={user.tanks} />
        <Text>Username: {this.state.user.name}</Text>
        <Button title="Logout" onPress={logoutUser} />
        <Button title="Add New Tank" onPress={() => this.props.navigation.push('AddTank', {user: this.state.user})} />
        <Button title="Add New Filter" onPress={() => this.props.navigation.push('AddFilter', {user: this.state.user})} />
        <Button title="Add New Fish" onPress={() => this.props.navigation.push('AddFish')} />
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