import React from 'react';
import {FlatList, Alert} from 'react-native';
import {ListItem} from 'react-native-elements';
import {deleteFilter} from '../api/filters';

export default class FilterList extends React.Component {

  state = {
    filters: this.props.filters
  }

  delete = (filter) => {
    Alert.alert(
      'Delete ' + filter.name + '?',
      '',
      [
        {text: 'Cancel', style: 'cancel'},
        {text: 'OK', onPress: () => this.removeFilter(filter)}
      ],
    )
  }

  removeFilter = (filter) => {
    deleteFilter(filter.id)
      .then(() => {
        let filters = [...this.state.filters];
        filters = filters.filter(x => x.id !== filter.id);
        console.log(filter.id, filters);
        this.setState({filters});
      });
  }

  renderFilterItem = ({item}) => (
    <ListItem
      bottomDivider
      title={item.name}
      subtitle={`${item.type} ${item.flowRate} lph`}
      onLongPress={() => this.delete(item)}
    />
  )
  render () {
    const {filters} = this.state;
    return (
      <FlatList
        keyExtractor={(item) => item.id.toString()}
        data={filters}
        renderItem={this.renderFilterItem}
      />
    )
  }
}