import React from 'react';
import {StyleSheet, View} from 'react-native';
import { Text } from 'react-native-elements';

export default WarningMessage = (props) => (
  <View style={styles.warning}>
    <Text>{props.message}</Text>
  </View>
);

const styles = StyleSheet.create({
  warning: {
    backgroundColor: '#e6c000',
    padding: 16,
    margin: 8
  }
})