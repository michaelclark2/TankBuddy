import React from 'react';
import {View, Text, Picker} from 'react-native'

export default class AddFilterScreen extends React.Component {
  static navigationOptions = {
    title: 'Add Filter'
  }

  state = {
    selectedTank: this.props.navigation.getParam('selectedTank'),
  }
  render () {
    return (
      <View>
        <Picker selectedValue={this.state.selectedTank} onValueChange={(selectedTank) => this.setState({selectedTank})}>
          <Picker.Item label={this.state.selectedTank.name} value={this.state.selectedTank}/>
          <Picker.Item label="Another Tank" value={{}}/>
        </Picker>
      </View>
    );
  }
};
