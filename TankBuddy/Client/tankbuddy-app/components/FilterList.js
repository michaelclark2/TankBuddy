import React from 'react';
import {StyleSheet, View, FlatList} from 'react-native';
import {ListItem} from 'react-native-elements';

export default class FilterList extends React.Component {

  renderFilterItem = ({item}) => (
    <ListItem
      bottomDivider
      title={item.name}
      subtitle={`${item.type} ${item.flowRate} ${item.metric ? 'lph' : 'gph'}`}
    />
  )
  render () {
    const {filters} = this.props;
    return (
      <FlatList
        keyExtractor={(item) => item.id.toString()}
        data={filters}
        renderItem={this.renderFilterItem}
      />
    )
  }
}