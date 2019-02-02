import React from 'react';
import {FlatList} from 'react-native';
import {ListItem, Text, Icon} from 'react-native-elements';

export default class TankList extends React.Component {
  renderTankItem = ({item}) => {
    return <ListItem
      bottomDivider
      leftElement={() => <Text>{item.name}</Text>}
      rightElement={() => <Text>Stock / Available</Text>}
    />
  }
  render () {
    const {tanks} = this.props;
    return (
      <FlatList
        keyExtractor={(item) => item.id.toString()}
        data={tanks}
        renderItem={this.renderTankItem}
      />
    )
  }
}