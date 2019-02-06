import React from 'react';
import { View, StyleSheet, AsyncStorage, StatusBar } from 'react-native';
import {NavigationEvents} from 'react-navigation';
import {Button, Text} from 'react-native-elements';

import {logoutUser} from '../api/firebase';
import {authenticate} from '../api/auth';
import TankList from '../components/TankList';
import { getTanks } from '../api/tanks';

export default class HomeScreen extends React.Component {
  state = {
    user: {},
    tanks: [],
  }
  static navigationOptions = {
    title: "TankBuddy"
  }
  componentDidMount () {
    this.authenticateUser();
  }

  authenticateUser = () => {
    AsyncStorage.getItem('token')
      .then(token => {
        authenticate(token)
          .then(user => {
            AsyncStorage.setItem('metric', JSON.stringify(user.metric));
            this.setState({user, tanks: user.tanks})
          }).catch(console.error);
      });
  }

  refreshTanks = () => {
    const {user} = {...this.state};
    getTanks()
      .then(tanks => {
        this.setState({tanks});
      })
  }

  render () {
    const {user, tanks} = this.state;
    return (
      <View style={styles.container}>
        <NavigationEvents onDidFocus={this.refreshTanks}/>
        <TankList navigation={this.props.navigation} tanks={tanks} />
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