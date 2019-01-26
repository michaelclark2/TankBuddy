import React from 'react';
import { Text, StyleSheet } from 'react-native';

export default BrandTitle = (props) => <Text style={styles.brand}>TankBuddy</Text>;

const styles = StyleSheet.create({
  brand: {
    fontSize: 72,
    fontWeight: 'bold'
  }
})