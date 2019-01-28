import React from 'react';
import {
  StyleSheet,
  Text,
  TextInput,
  View,
  Button,
  ImageBackground,
} from 'react-native';

export default class AddTankScreen extends React.Component {
  static navigationOptions = {
    title: "Add Tank"
  }
  render () {
    return (
      <View style={styles.container}>
        <Text>{this.props.navigation.getParam('userId')}</Text>
        <TextInput style={styles.input}/>
        <ImageBackground source={require('../assets/tank.png')} style={styles.tankImg} imageStyle={{resizeMode: 'contain'}}>

        </ImageBackground>
      </View>
    );
  }
};


const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  tankImg: {
    flex: 1,
    margin: 16
  }
})