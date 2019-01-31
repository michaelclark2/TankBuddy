import React from 'react';
import {View, Picker, StyleSheet, AsyncStorage} from 'react-native'
import {Text, Card, Button} from 'react-native-elements';
import InputField from '../components/InputField';

import { getTanks } from '../api/tanks';
import { postFilter } from '../api/filters';

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
    this.getUserMeasurement();
  }
  getUserTanks = () => {
    getTanks()
      .then(usersTanks => {
        this.setState({usersTanks})
      });
  }

  getUserMeasurement = async () => {
    let metric = await AsyncStorage.getItem('metric');
    this.metric = JSON.parse(metric);
  }

  changeTank = (selectedTank) => {
    const {filter} = {...this.state};
    filter.tankId = selectedTank.id;
    this.setState({selectedTank, filter})
  }
  changeInput = (input, key) => {
    const {filter} = {...this.state};
    filter[key] = input;
    this.setState({filter});
  }

  calculateVolume = () => {
    const {selectedTank} = this.state;

    const cubicCm = selectedTank.width * selectedTank.length * selectedTank.depth;

    if (this.metric) {
      return ((cubicCm / 1000) * 4).toFixed(2) + ' liters per hour';
    } else {
      return (((cubicCm / 16.387) / 231) * 4).toFixed(2) + ' gallons per hour';
    }

  }

  isValidFilter = () => {
    const {filter} = this.state;
    return filter.name !== ''
    && filter.flowRate
    && filter.tankId
    && filter.type !== '';
  }

  addFilter = () => {
    const {filter} = this.state;
    postFilter(filter)
      .then(() => {
        this.props.navigation.popToTop();
      })
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
          {
            selectedTank && selectedTank.name ? (
              <Text>Recommended Flow Rate: { this.calculateVolume() }</Text>
            ) : null
          }
        </Card>
        <Card title="Filter Type" wrapperStyle={styles.centered}>
          <Picker style={{width: '100%'}} selectedValue={filter.type} onValueChange={(type) => this.changeInput(type, 'type')}>
            <Picker.Item value="internal" label="Internal" />
            <Picker.Item value="external" label="External" />
            <Picker.Item value="undergravel" label="Undergravel" />
          </Picker>
        </Card>
        <Card title="Selected Tank" wrapperStyle={styles.centered}>
          <Picker style={{width: '100%'}} selectedValue={selectedTank} onValueChange={(selectedTank) => this.changeTank(selectedTank)}>
            {
              selectedTank ? (
                // map users tanks except selected one, then map null Picker.Item to selectedTank
                usersTanks.map(tank => tank.id !== selectedTank.id ? <Picker.Item key={tank.id} value={tank} label={tank.name}/> : null)
                  .map(x => x === null ? <Picker.Item key={selectedTank.id} value={selectedTank} label={selectedTank.name}/> : x)
              ) : (
                usersTanks.map(tank => <Picker.Item key={tank.id} value={tank} label={tank.name}/>)
              )
            }
          </Picker>
        </Card>
        {
          this.isValidFilter() ? (
            <View style={{justifyContent: 'center', flex: 1, padding: 16}}>
              <Button title="Add Filter" onPress={this.addFilter} />
            </View>
          ) : null
        }
      </View>
    );
  }
};

const styles = StyleSheet.create({
  centered: {
    alignItems: 'center'
  }
})
