import React from 'react';
import {StyleSheet, View, Picker, ScrollView} from 'react-native';
import { Card, Text, Button, Slider, Overlay, SearchBar } from 'react-native-elements';
import InputField from '../components/InputField';
import { getTanks } from '../api/tanks';
import SearchSpecies from '../components/SearchSpecies';
import { postFish } from '../api/fish';

export default class AddFishScreen extends React.Component {
  static navigationOptions = {
    title: 'Add Fish'
  }

  state = {
    usersTanks: [],
    selectedTank: {},
    speciesVisible: false,
    selectedSpecies: {},
    fish: {
      name: '',
      sex: 0,
      tankId: 0,
      speciesId: 0
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
    const {fish} = {...this.state};
    fish[key] = input;
    this.setState({fish});
  }

  changeTank = (selectedTank) => {
    if (selectedTank !== 0) {
      const {fish} = {...this.state};
      fish.tankId = selectedTank.id;
      this.setState({fish, selectedTank});
    }
  }

  showSpeciesSearch = () => this.setState({speciesVisible: true});

  selectSpecies = (selectedSpecies) => {
    const {fish} = {...this.state};
    fish.speciesId = selectedSpecies.id;
    this.setState({selectedSpecies, fish, speciesVisible: false})
  }

  isValidFish = () => {
    const {fish} = this.state;
    return fish.name !== ''
    && fish.speciesId > 0
    && fish.tankId > 0
  }

  addFish = () => {
    const {fish} = this.state;
    postFish(fish)
      .then(() => {
        this.props.navigation.popToTop();
      })
      .catch(console.error);
  }

  render () {
    const {fish, usersTanks, selectedTank, selectedSpecies, speciesVisible} = this.state;
    return (
      <ScrollView style={{flex: 1}}>
        <Overlay isVisible={speciesVisible} onBackdropPress={() => this.setState({speciesVisible: false})}>
          <SearchSpecies selectSpecies={this.selectSpecies}/>
        </Overlay>
        <Card title="Name" wrapperStyle={styles.centered}>
          <InputField onChangeText={(name) => this.changeInput(name, 'name')} value={fish.name} />
        </Card>
        <Card title="Species" wrapperStyle={styles.centered}>
          {
            selectedSpecies && selectedSpecies.id ? (
              <Text h4>{selectedSpecies.commonName !== 'N/A' ? selectedSpecies.commonName : selectedSpecies.scientificName}</Text>
            ) : null
          }
          <Button title="Find Species" onPress={this.showSpeciesSearch} />
        </Card>
        <Card title="Sex" wrapperStyle={styles.centered}>
          <View style={styles.sexSlider}>
            <Text style={{flex: 1, textAlign: 'center'}} >Male</Text>
            <Slider style={{flex: 1}} value={fish.sex} maximumValue={1} step={1}/>
            <Text style={{flex: 1, textAlign: 'center'}}>Female</Text>
          </View>
        </Card>
        <Card title="Selected Tank" wrapperStyle={styles.centered}>
          <Picker style={{width: '100%'}} selectedValue={selectedTank} onValueChange={(selectedTank) => this.changeTank(selectedTank)}>
            {
              selectedTank.id ? (
                // map users tanks except selected one, then map null Picker.Item to selectedTank
                usersTanks.map(tank => tank.id !== selectedTank.id ? <Picker.Item key={tank.id} value={tank} label={tank.name}/> : null)
                  .map(x => x === null ? <Picker.Item key={selectedTank.id} value={selectedTank} label={selectedTank.name}/> : x)
              ) : (
                [<Picker.Item key={0} value={0} label="Choose a tank" />, usersTanks.map(tank => <Picker.Item key={tank.id} value={tank} label={tank.name}/>)]
              )
            }
          </Picker>
        </Card>
        <Card title="Warnings">
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
            <Text>Warning</Text>
        </Card>
        {
          this.isValidFish() ? (
            <View style={{justifyContent: 'center', flex: 1, padding: 16}}>
              <Button title="Add Fish" onPress={this.addFish} />
            </View>
          ) : null
        }
      </ScrollView>
    )
  }
}

const styles = StyleSheet.create({
  centered: {
    alignItems: 'center'
  },
  sexSlider: {
    flexDirection: 'row',
    alignItems: 'center'
  }
})