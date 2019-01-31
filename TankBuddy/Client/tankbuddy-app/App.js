import React from 'react';
import { createStackNavigator, createAppContainer, createSwitchNavigator } from 'react-navigation';
import {ThemeProvider} from 'react-native-elements';

import AuthLoadingScreen from './screens/AuthLoadingScreen';
import HomeScreen from './screens/HomeScreen';
import LoginScreen from './screens/LoginScreen';
import RegisterScreen from './screens/RegisterScreen';
import AddTankScreen from './screens/AddTankScreen';
import AddFilterScreen from './screens/AddFilterScreen';

const AppStack = createStackNavigator({
  Home: HomeScreen,
  AddTank: AddTankScreen,
  AddFilter: AddFilterScreen
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
  Login: LoginScreen,
  Register: RegisterScreen,
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

const theme = {

}

export default class App extends React.Component {
  render() {
    return (
      <ThemeProvider theme={theme}>
        <AppNav />
      </ThemeProvider>
    )
  }
}
