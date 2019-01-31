import React from 'react';
import {View, Text} from 'react-native'

export default class AddFilterScreen extends React.Component {
  static navigationOptions = {
    title: 'Add Filter'
  }
  render () {
    return (
      <View>
        <Text>{this.props.navigation.getParam('selectedTank').id}</Text>
      </View>
    );
  }
};
