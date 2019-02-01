import React from 'react';
import {View, FlatList} from 'react-native';
import {Text, SearchBar, ListItem} from 'react-native-elements';

export default class SearchSpecies extends React.Component {

  state = {
    searchTerms: '',
    searchResults: [],
  }

  changeTerms = (searchTerms) => {
    this.setState({searchTerms});
  }

  renderFish = ({item}) => (
    <ListItem
      bottomDivider
      chevron
      key={item.id}
      title={item.scientificName}
      subtitle={item.commonName}

    />
  )
  render () {
    const {searchTerms, searchResults} = this.state;
    return (
      <View style={{flex: 1}}>
        <Text h4 style={{margin: 8}}>Search for species</Text>
        <SearchBar lightTheme value={searchTerms} onChangeText={this.changeTerms} />
        <FlatList data={searchResults} renderItem={this.renderFish} />
      </View>
    )
  }
}