import React from 'react';
import {StyleSheet, View} from 'react-native';
import SearchSpecies from '../components/SearchSpecies';

export default class SearchScreen extends React.Component {

  static navigationOptions = {
    title: 'Search Species'
  }

  goToFishPage = (fish) => {
    this.props.navigation.push('FishDetails', {fish})
  }

  render () {
    return (
      <View style={{flex: 1, marginLeft: 16, marginRight: 16}}>
        <SearchSpecies selectSpecies={this.goToFishPage} />
      </View>
    );
  }
};
