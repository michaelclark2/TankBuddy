import React from 'react';
import {StyleSheet, ScrollView, View} from 'react-native';
import {Text, Card, Button} from 'react-native-elements';

import FishTankLevels from '../components/FishTankLevels';
import FilterList from '../components/FilterList';

export default class TankDetailsScreen extends React.Component {

  static navigationOptions = ({navigation}) => ({
    title : navigation.state.params.tank.name
  })

  state = {
    tank: this.props.navigation.getParam('tank')
  }
  render () {
    const {tank} = this.state;
    return (
      <ScrollView style={{flex: 1}}>
        <Card title="Fish">
          <FishTankLevels fish={tank.fish}/>
        </Card>
        <Text h3 style={{textAlign: 'center'}}>Stock: {Math.floor(tank.stockAvailable)} / {Math.floor(tank.stockCapacity)}</Text>
        <Card title="Dimensions">
          <View style={styles.viewRows}>
            <Text h4>W: {tank.width}</Text>
            <Text h4>L: {tank.length}</Text>
            <Text h4>D: {tank.depth}</Text>
          </View>
        </Card>
        <Card title="Conditions">
          <View style={styles.viewRows}>
            <Text h4>Temp: {tank.temp}</Text>
            <Text h4>pH: {tank.pH}</Text>
            <Text h4>dH: {tank.dH}</Text>
          </View>
        </Card>
        <Card title="Filters">
          <FilterList filters={tank.filters} />
        </Card>
        <View style={styles.modBtns}>
          <View style={styles.btn}>
            <Button style={{...styles.btn, ...styles.editBtn}} title="Edit" />
          </View>
          <View style={styles.btn}>
            <Button style={{...styles.btn, ...styles.delBtn}} title="Delete" />
          </View>
        </View>
        <Card title="Warnings">
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