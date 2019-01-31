import React from 'react';
import {View, Picker, StyleSheet} from 'react-native'
import {Text, Card, ButtonGroup} from 'react-native-elements';
import InputField from '../components/InputField';

import { getTanks } from '../api/tanks';

export default class AddFilterScreen extends React.Component {
  static navigationOptions = {
    title: 'Add Filter'
  }

  state = {
    selectedTank: this.props.navigation.getParam('selectedTank') || {},
    usersTanks: [],
    filter: {
      type: 'internal'
    }
  }
  componentDidMount() {
    this.getUserTanks();
  }
  getUserTanks = () => {
    getTanks()
      .then(usersTanks => {
        this.setState({usersTanks})
      });
  }
  changeInput = (input, key) => {
    const {filter} = {...this.state};
    filter[key] = input;
    this.setState({filter});
  }
  render () {
    const {usersTanks, selectedTank, filter} = this.state;

    return (
      <View style={{flex: 1}}>
        <Card title="Name" wrapperStyle={styles.centered}>
          <InputField style={{alignItems: 'center'}} value={filter.name} onChangeText={(name) => this.changeInput(name, 'name')} />
        </Card>
        <Card title="Flow Rate" wrapperStyle={styles.centered}>
          <InputField isNumber={true} style={{alignItems: 'center'}} onChangeText={(flowRate) => this.changeInput(flowRate, 'flowRate')}/>
        </Card>
        <Card title="Filter Type" wrapperStyle={styles.centered}>
          <Picker style={{width: '100%'}} selectedValue={filter.type} onValueChange={(type) => this.changeInput(type, 'type')}>
            <Picker.Item value="internal" label="Internal" />
            <Picker.Item value="external" label="External" />
            <Picker.Item value="undergravel" label="Undergravel" />
          </Picker>
        </Card>
        <Card title="Selected Tank" wrapperStyle={styles.centered}>
          <Picker style={{width: '100%'}} selectedValue={selectedTank} onValueChange={(selectedTank) => this.setState({selectedTank})}>
            { usersTanks.map(tank => <Picker.Item key={tank.id} value={tank} label={tank.name}/>) }
          </Picker>
        </Card>
      </View>
    );
  }
};

const styles = StyleSheet.create({
  centered: {
    alignItems: 'center'
  }
})
