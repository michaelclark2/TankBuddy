import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { createStackNavigator, createAppContainer, createSwitchNavigator } from 'react-navigation';

import AuthLoadingScreen from './screens/AuthLoadingScreen';
import HomeScreen from './screens/HomeScreen';
import LoginScreen from './screens/LoginScreen';

const AppStack = createStackNavigator({
  Home: HomeScreen,
},
{
  initialRouteName: "Home",
  defaultNavigationOptions: {
    headerStyle: {
      backgroundColor: 'blue'
    },
    headerTintColor: 'white'
  }
});

const AuthStack = createStackNavigator({
  Login: LoginScreen
},
{
  initialRouteName: 'Login'
})

const AppNav = createAppContainer(createSwitchNavigator(
  {
    AuthLoading: AuthLoadingScreen,
    App: AppStack,
    Auth: AuthStack
  },
  {
    initialRouteName: 'AuthLoading'
  }));


export default class App extends React.Component {
  state = {
    user: {}
  }
  setUser = (user) => {
    this.setState({user});
  }
  render() {
    return <AppNav setUser={this.setUser}/>
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