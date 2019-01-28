import React from 'react';
import { TextInput, StyleSheet } from 'react-native';

export default InputField = (props) => <TextInput {...props} style={styles.input} />

const styles = StyleSheet.create({
  input: {
    textAlign: 'center',
    borderRadius: 50,
    backgroundColor: '#eee',
    elevation: 2,
    fontSize: 24,
    width: '100%',
    padding: 8,
    margin: 8
  }
})