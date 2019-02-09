import React from 'react';
import { View, StyleSheet, AsyncStorage } from 'react-native';
import {Button, Text} from 'react-native-elements';

import {logoutUser} from '../api/firebase';
import {authenticate} from '../api/auth';
import SquareButton from '../components/SquareButton';

export default class HomeScreen extends React.Component {
  state = {
    user: {},
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
            this.setState({user})
          }).catch(console.error);
      });
  }


  render () {
    const {user} = this.state;
    return (
      <View style={styles.container}>
        <View>
          <Text h3>Welcome {user.name}!</Text>
        </View>
        <View style={styles.buttons}>
          <SquareButton icon={{name: 'cube', type: 'material-community', size: 42, color: 'white'}} title="My Tanks" onPress={() => this.props.navigation.push('MyTanks')} />
          <SquareButton icon={{name: 'fish', type: 'material-community', size: 42, color: 'white'}} title="My Fish" onPress={() => this.props.navigation.push('MyFish')} />
          <SquareButton icon={{name: 'search', size: 42, color: 'white'}} title="Species" onPress={() => this.props.navigation.push('SearchFish')} />
          <SquareButton icon={{name: 'cube-outline', type: 'material-community', size: 42, color: 'white'}} title="Add Tank" onPress={() => this.props.navigation.push('AddTank', {user: this.state.user})} />
          <SquareButton icon={{name: 'plus-circle-outline', type: 'material-community', size: 42, color: 'white'}} title="Add Fish" onPress={() => this.props.navigation.push('AddFish')} />
          <SquareButton icon={{name: 'water-off', type: 'material-community', size: 42, color: 'white'}} title="Add Filter" onPress={() => this.props.navigation.push('AddFilter')} />

        </View>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'flex-start',
  },
  buttons: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'center',
    flex: 1
  }
});