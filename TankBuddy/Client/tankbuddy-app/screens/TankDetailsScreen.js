import React from 'react';
import {StyleSheet, ScrollView, View} from 'react-native';
import {Text, Card, Button, Overlay} from 'react-native-elements';

import FishTankLevels from '../components/FishTankLevels';
import FilterList from '../components/FilterList';
import { deleteTank } from '../api/tanks';

export default class TankDetailsScreen extends React.Component {

  static navigationOptions = ({navigation}) => ({
    title : navigation.state.params.tank.name
  })

  state = {
    tank: this.props.navigation.getParam('tank'),
    isDeleting: false,
  }

  tryDelete = () => {
    this.setState({isDeleting: true});
  }

  removeTank = () => {
    const {tank} = this.state;

    deleteTank(tank.id)
      .then(() => {
        this.closeModal();
        this.props.navigation.popToTop();
      })
      .catch(console.error);
  }

  closeModal = () => {
    this.setState({isDeleting: false});
  }
  render () {
    const {tank, isDeleting} = this.state;
    return (
      <ScrollView style={{flex: 1}}>
        <Overlay isVisible={isDeleting} height="auto" onBackdropPress={this.closeModal}>
          <View>
            <Text h4 style={{textAlign: 'center'}}>Delete {tank.name}?</Text>
            <View style={{...styles.modBtns, justifyContent: 'space-around'}}>
              <Button style={styles.btn} title="Yes" onPress={this.removeTank}/>
              <Button style={styles.btn} title="No" onPress={this.closeModal}/>
            </View>
          </View>
        </Overlay>
        <Card title="Fish">
          <FishTankLevels fish={tank.fish}/>
        </Card>
        <Text h3 style={{textAlign: 'center'}}>Stock: {tank.stockAvailable} / {tank.stockCapacity}</Text>
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
            <Button style={{...styles.btn, ...styles.delBtn}} title="Delete" onPress={this.tryDelete} />
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