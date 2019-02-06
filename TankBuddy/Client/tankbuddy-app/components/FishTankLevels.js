import React from 'react';
import {StyleSheet, View} from 'react-native';
import {Icon, Tooltip, Text} from 'react-native-elements';

export default class FishTankLevels extends React.Component {
  sortFish = () => {
    const {fish} = this.props;
    return fish.reduce((fish, f) => {
      if (!fish[f.tankLevel]) {
        fish[f.tankLevel] = [];
      }
      fish[f.tankLevel].push(f);
      return fish;
    }, {})
  }

  renderFishIcons = (fish) => {
    return fish.map(f => (
      <Tooltip key={f.id} popover={<Text>{f.name}: {f.commonName !== 'N/A' ? f.commonName : f.scientificName} {f.maxSize} cm</Text>}>
        <Icon name="fish" type="material-community" size={40} color="orange" />
      </Tooltip>
    ))
  }
  render () {
    const sortedFish = this.sortFish();
    return (
      <View>
        <View style={{...styles.level, ...styles.topLevel}}>
          {sortedFish['Top levels'] && this.renderFishIcons(sortedFish['Top levels'])}
        </View>
        <View style={{...styles.level, ...styles.midLevel}}>
          {sortedFish['Middle levels'] && this.renderFishIcons(sortedFish['Middle levels'])}
        </View>
        <View style={{...styles.level, ...styles.bottomLevel}}>
          {sortedFish['Bottom levels'] && this.renderFishIcons(sortedFish['Bottom levels'])}
        </View>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  level: {
    minHeight: 75,
    justifyContent: 'flex-start',
    alignItems: 'center',
    textAlign: 'left',
    flexDirection: 'row'
  },
  topLevel: {
    backgroundColor: '#a9c4f5'
  },
  midLevel: {
    backgroundColor: '#6495ed'
  },
  bottomLevel: {
    backgroundColor: '#1f66e5'
  },
})