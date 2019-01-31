import React from 'react';
import {StyleSheet, View} from 'react-native';
import { Text } from 'react-native-elements';

export default class AddFishScreen extends React.Component {
  static navigationOptions = {
    title: 'Add Fish'
  }

  state = {
    fish: {}
  }

  render () {
    return (
      <View>
        <Text h1>Adda Fish!?</Text>
      </View>
    )
  }
}