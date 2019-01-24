import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

export default class LoginScreen extends React.Component {
  static navigationOptions = {
    title: "Login"
  }

  render () {
    return (
      <View style={styles.container}>
        <Text>Login</Text>
        <Button title="Aye" onPress={() => this.props.navigation.push("Other")} />
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