import React from 'react';
import {FlatList, Alert} from 'react-native';
import {ListItem} from 'react-native-elements';
import {deleteFish} from '../api/fish';

export default class FishList extends React.Component {

  state = {
    fish: this.props.fish
  }

  componentDidUpdate(prevProps) {
    if (JSON.stringify(this.props.fish) !== JSON.stringify(prevProps.fish)){
      this.setState({fish: this.props.fish})
    }
  }

  delete = (fish) => {
    Alert.alert(
      'Delete ' + fish.name + '?',
      '',
      [
        {text: 'Cancel', style: 'cancel'},
        {text: 'OK', onPress: () => this.removeFish(fish)}
      ],
    )
  }

  removeFish = (fish) => {
    deleteFish(fish.id)
      .then(() => {
        let {fish} = {...this.state};
        console.log(fish)
        fish = fish.filter(x => x.id !== fish.id);
        console.log(fish)
        this.setState({fish});
      });
  }

  renderFishItem = ({item}) => (
    <ListItem
      bottomDivider
      title={item.name}
      subtitle={item.commonName !== 'N/A' ? item.commonName : item.scientificName}
      onLongPress={() => this.delete(item)}
    />
  )
  render () {
    const {fish} = this.state;
    return (
      <FlatList
        keyExtractor={(item) => item.name + item.id}
        data={fish}
        renderItem={this.renderFishItem}
      />
    )
  }
}