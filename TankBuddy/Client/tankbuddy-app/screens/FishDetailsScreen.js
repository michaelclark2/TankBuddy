import React from 'react';
import {StyleSheet, View, ScrollView} from 'react-native';
import {Card, Text} from 'react-native-elements';

export default class FishDetailsScreen extends React.Component {
  static navigationOptions = ({navigation}) => ({
    title: navigation.state.params.fish.commonName !== 'N/A' ? navigation.state.params.fish.commonName : navigation.state.params.fish.scientificName
  })
  state = {
    fish: this.props.navigation.getParam('fish') || {}
  }
  render () {
    const {fish} = this.state;
    console.log(fish)
    return (
      <ScrollView>
        <Card title='Info'>
          <Text style={styles.text}>Common Name: {fish.commonName}</Text>
          <Text style={styles.text}>Scientific Name: {fish.scientificName}</Text>
          <Text style={styles.text}>Family: {fish.family}</Text>
          <Text style={styles.text}>Adult Size: {fish.maxSize} cm</Text>
          <Text style={styles.text}>Reproduction: {fish.reproduction}</Text>
          <Text style={styles.text}>Tank Level: {fish.tankLevel}</Text>
        </Card>
        <Card title="Ideal Conditions">
          <Text style={styles.text}>Temp °C: {fish.tempMin} - {fish.tempMax}</Text>
          <Text style={styles.text}>pH: {fish.phMin} - {fish.phMax}</Text>
          <Text style={styles.text}>Hardness: {fish.dhMin} - {fish.dhMax}</Text>
        </Card>
        <Card title="Aggression">
          <Text style={styles.text}>Family: {fish.temperamentSelf}</Text>
          <Text style={styles.text}>Other Species: {fish.temperamentOthers}</Text>
        </Card>

      </ScrollView>
    )
  }
}

const styles = StyleSheet.create({
  text: {
    fontSize: 18
  }
})