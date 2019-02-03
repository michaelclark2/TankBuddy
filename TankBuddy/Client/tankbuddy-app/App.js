import React from 'react';
import { createStackNavigator, createAppContainer, createSwitchNavigator } from 'react-navigation';
import {ThemeProvider} from 'react-native-elements';

import AuthLoadingScreen from './screens/AuthLoadingScreen';
import HomeScreen from './screens/HomeScreen';
import LoginScreen from './screens/LoginScreen';
import RegisterScreen from './screens/RegisterScreen';
import AddTankScreen from './screens/AddTankScreen';
import AddFilterScreen from './screens/AddFilterScreen';
import AddFishScreen from './screens/AddFishScreen';
import TankDetailsScreen from './screens/TankDetailsScreen';

const AppStack = createStackNavigator({
  Home: HomeScreen,
  AddTank: AddTankScreen,
  AddFilter: AddFilterScreen,
  AddFish: AddFishScreen,
  TankDetails: TankDetailsScreen
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
  Card: {
    titleStyle: {
      marginBottom: 0
    },
    dividerStyle: {
      display: 'none'
    }
  }
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
