import React from 'react';
import {StyleSheet, View} from 'react-native';
import {Text, Card} from 'react-native-elements';

import FishTankLevels from '../components/FishTankLevels';

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
      <View style={{flex: 1}}>
        <Card>
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
        </Card>
        <Card title="Warnings">
        </Card>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  viewRows: {
    flexDirection: 'row',
    justifyContent: 'space-around'
  }
})