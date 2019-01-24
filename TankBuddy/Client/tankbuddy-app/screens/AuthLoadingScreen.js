import React from 'react';
import firebase from '../api/firebase';
import { View, Text, StyleSheet } from 'react-native';

export default class AuthLoadingScreen extends React.Component {
  static navigationOptions = {
    title: "Home"
  }

  constructor (props) {
    super(props);
    this.checkLoginStatus();
  }
  checkLoginStatus = () => {
    firebase.auth().onAuthStateChanged(user => {
      if (user) {
        this.props.navigation.navigate('App');
      }
      else {
        this.props.navigation.navigate('Auth');
      }
    })
  }
  render () {
    return (
      <View style={styles.container}>
        <Text>Checking login status....</Text>
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