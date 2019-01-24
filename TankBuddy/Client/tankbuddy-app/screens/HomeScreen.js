import React from 'react';
import { View, Text, Button, StyleSheet } from 'react-native';

export default class HomeScreen extends React.Component {
  static navigationOptions = {
    title: "Home"
  }

  render () {
    return (
      <View style={styles.container}>
        <Text>Hello World!</Text>
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