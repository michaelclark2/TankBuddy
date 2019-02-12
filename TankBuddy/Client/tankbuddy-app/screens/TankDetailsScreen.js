import React from 'react';
import {StyleSheet, ScrollView, View, Alert} from 'react-native';
import {Text, Card, Button} from 'react-native-elements';

import FishTankLevels from '../components/FishTankLevels';
import FilterList from '../components/FilterList';
import { deleteTank } from '../api/tanks';
import WarningMessage from '../components/WarningMessage';

export default class TankDetailsScreen extends React.Component {

  static navigationOptions = ({navigation}) => ({
    title : navigation.state.params.tank.name
  })

  state = {
    tank: this.props.navigation.getParam('tank'),
  }

  tryDelete = (tank) => {
    Alert.alert(
      'Delete ' + tank.name + '?',
      '',
      [
        {text: 'Cancel', style: 'cancel'},
        {text: 'OK', onPress: () => this.removeTank()}
      ]
    )
  }

  removeTank = () => {
    const {tank} = this.state;

    deleteTank(tank.id)
      .then(() => {
        this.props.navigation.popToTop();
      })
      .catch(console.error);
  }

  render () {
    const {tank} = this.state;
    return (
      <ScrollView style={{flex: 1}}>
        <Card title="Fish">
          <FishTankLevels fish={tank.fish}/>
        </Card>
        <Text h3 style={{textAlign: 'center'}}>Stock: {tank.stockAvailable} / {tank.stockCapacity}</Text>
        <Card title="Dimensions">
          <View style={styles.viewRows}>
            <Text h4>W: {tank.width} cm</Text>
            <Text h4>L: {tank.length} cm</Text>
            <Text h4>D: {tank.depth} cm</Text>
          </View>
        </Card>
        <Card title="Conditions">
          <View style={styles.viewRows}>
            <Text h4>Temp: {tank.temp} °C</Text>
            <Text h4>pH: {tank.pH}</Text>
            <Text h4>dH: {tank.dH}</Text>
          </View>
        </Card>
        <Card title="Filters">
          <FilterList filters={tank.filters} />
        </Card>
        <View style={styles.modBtns}>
          <View style={styles.btn}>
            <Button style={{...styles.btn, ...styles.delBtn}} title="Delete" onPress={() => this.tryDelete(tank)} />
          </View>
        </View>
        <Card title="Warnings">
          {tank.warnings.map((w, i) => <WarningMessage key={i} message={w.message} />)}
        </Card>
      </ScrollView>
    )
  }
}

const styles = StyleSheet.create({
  viewRows: {
    flexDirection: 'row',
    justifyContent: 'space-around'
  },
  modBtns: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    margin: 8,
    marginBottom: 0
  },
  btn: {
    flex: 1,
    margin: 8,
    marginBottom: 0
  }
})