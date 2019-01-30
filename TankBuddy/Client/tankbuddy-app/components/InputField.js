import React from 'react';
import { TextInput, StyleSheet } from 'react-native';

export default class InputField extends React.Component {

  change = (input) => {
    const {isNumber} = this.props;

    if (isNumber) {
      input = input.replace(/[^0-9.]/g, '');
      let splitInput = input.split('.');
      input = splitInput.shift() + (splitInput.length ? '.' + splitInput[0].slice(0, 2) : '');
      console.log(typeof input)
    }

    this.props.onChangeText(input);
  }
  render () {
    return <TextInput {...this.props} onChangeText={this.change} style={{...styles.input, ...this.props.style}} />
  }
}

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