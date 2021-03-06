import React from 'react';
import {View, FlatList, Keyboard} from 'react-native';
import {Text, SearchBar, ListItem} from 'react-native-elements';
import { searchSpecies } from '../api/fish';

export default class SearchSpecies extends React.Component {

  state = {
    searchTerms: '',
    searchResults: [],
  }

  changeTerms = (searchTerms) => {
    this.setState({searchTerms}, () => {
      if (searchTerms === '') {
        clearTimeout(this.timer);
        this.timer = null;
        this.setState({searchTerms, searchResults: []})
      }
      else if (searchTerms.length > 2) {
        this.startSearch();
      }
    });
  }

  startSearch = () => {
    if (this.timer != null) {
      clearTimeout(this.timer);
      this.timer = null;
    }
    this.timer = setTimeout(this.loadSpecies, 750);
  }

  loadSpecies = () => {
    const {searchTerms} = this.state;

    this.setState({isLoading: true}, () => {
      searchSpecies(searchTerms)
        .then(searchResults => {
          this.setState({isLoading: false, searchResults, noResults: false})
        })
        .catch(() => this.setState({noResults: true, isLoading: false, searchResults: []}))
    })
  }

  renderFish = ({item}) => {
    const {selectSpecies} = this.props;
    return <ListItem
      bottomDivider
      chevron
      key={item.id}
      title={item.scientificName}
      subtitle={item.commonName}
      onPress={() => selectSpecies(item)}
    />
  }
  render () {
    const {searchTerms, searchResults} = this.state;
    return (
      <View style={{flex: 1}}>

          <SearchBar lightTheme value={searchTerms} onChangeText={this.changeTerms} showLoading={this.state.isLoading} />
          {
            this.state.noResults && searchTerms ? (
              <Text>No Results found</Text>
            ) : null
          }
          <FlatList keyboardShouldPersistTaps="always" onScroll={() => Keyboard.dismiss()} data={searchResults} renderItem={this.renderFish} keyExtractor={(item, index) => item.id.toString() || index} />
      </View>
    )
  }
}