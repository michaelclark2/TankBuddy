import React from 'react';
import firebase from '../api/firebase';
import { View, Text, StyleSheet, AsyncStorage, ActivityIndicator } from 'react-native';

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
        user.getIdToken(false)
          .then(token => {
            AsyncStorage.setItem('token', token)
              .then(() => {
                this.props.navigation.navigate('App');
              });
          });
      }
      else {
        this.props.navigation.navigate('Auth');
      }
    })
  }

  render () {
    return (
      <View style={styles.container}>
        <ActivityIndicator />
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