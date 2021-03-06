import React from 'react';
import { TextInput, StyleSheet } from 'react-native';

export default class InputField extends React.Component {

  change = (input) => {
    const {isNumber} = this.props;

    if (isNumber) {
      input = input.replace(/[^\d.]/g, '');
      // split on decimal
      let splitInput = input.split('.');
      // only allow one decimal at end of first string.  then only allow two digits.
      input = splitInput.shift() + (splitInput.length ? '.' + splitInput[0].slice(0, 2) : '');

      if (input[input.length - 1] !== '.') {
        input *= 1;
      }
    }

    this.props.onChangeText(input);
  }
  render () {
    const {isNumber} = this.props;
    const keyboard = isNumber ? 'number-pad': this.props.keyboardType || 'default';

    return <TextInput {...this.props} onChangeText={this.change} style={{...styles.input, ...this.props.style}} keyboardType={keyboard} />
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