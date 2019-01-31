import React from 'react';
import {
  StyleSheet,
  Text,
  View,
  Button,
  ImageBackground,
  KeyboardAvoidingView,
} from 'react-native';

import InputField from '../components/InputField';
import { postTank } from '../api/tanks';

export default class AddTankScreen extends React.Component {

  state = {
    tank: {
      name: '',
      userId: this.props.navigation.getParam('user').id,
      width: 0,
      length: 0,
      depth: 0,
      temp: 0,
      pH: 0,
      dH: 0
    },
    toggleDimensions: true,
  }

  static navigationOptions = {
    title: "Add Tank"
  }

  isValid = () => {
    const {tank} = this.state;
    return tank.name !== ''
    && tank.width
    && tank.length
    && tank.depth
    && tank.temp
    && tank.pH
    && tank.dH
  }

  changeFormView = () => {
    const {tank} = this.state;
    if (tank.width && tank.length && tank.depth && tank.name) {
      this.setState({toggleDimensions: false, isError: false})
    }
    else {
      this.setState({isError: true, error: "All fields required"})
    }
  }

  changeInput = (input, key) => {
    const {tank} = {...this.state};
    tank[key] = input;
    this.setState({tank})
  }

  postTank = () => {
    const {tank} = this.state;
    console.log(tank);
    postTank(tank)
      .then(() => {
        this.props.navigation.navigate('Home');
      }).catch(console.error);
  }

  showError = () => {
    const {error, isError} = this.state;
    if (isError) {
      return <Text style={styles.error}>{error}</Text>
    }
    return null
  }

  render () {
    const {tank} = this.state;
    const user = this.props.navigation.getParam('user');

    return (
      <View style={styles.container}>

        <View style={styles.nameField}>
          <InputField placeholder="Name" value={tank.name} onChangeText={(name) => this.changeInput(name, "name", true)}/>
        </View>
        <KeyboardAvoidingView style={styles.container} enabled behavior="padding">
          {
            this.state.toggleDimensions ? (
              <ImageBackground source={require('../assets/tank.png')} style={styles.tankImg} imageStyle={{resizeMode: 'contain', margin: 16}}>
                <Text style={styles.sectionHeader}>Dimensions { user.metric ? '(cm)' : '(in)'}</Text>
                <View style={styles.wlSection}>
                  <InputField style={styles.dimensionField} placeholder="Width" isNumber={true} onChangeText={(width) => this.changeInput(width, 'width')} value={tank.width > 0 ? tank.width.toString() : ''} keyboardType="number-pad" />
                  <InputField style={styles.dimensionField} placeholder="Length" isNumber={true} onChangeText={(length) => this.changeInput(length, 'length')} value={tank.length > 0 ? tank.length.toString() : ''} keyboardType="number-pad" />
                </View>
                <View style={styles.depthSection}>
                  <InputField style={{width: '50%'}} placeholder="Depth" isNumber={true} onChangeText={(depth) => this.changeInput(depth, 'depth')} value={tank.depth > 0 ? tank.depth.toString() : ''} keyboardType="number-pad" />
                </View>
                <View style={styles.nextSection}>
                  {
                    tank.name.length && tank.width && tank.length && tank.depth ? (
                      <Button title="Enter Water Conditions" onPress={this.changeFormView} />
                    ): null
                  }
                </View>
              </ImageBackground>
            ) : (
              <View style={styles.waterSection}>
                <Text style={styles.sectionHeader}>Water Conditions</Text>
                <InputField placeholder={'Temperature ' + (user.metric ? '°C' : '°F')} isNumber={true} onChangeText={(temp) => this.changeInput(temp, 'temp')} value={tank.temp > 0 ? tank.temp.toString() : ''} keyboardType="number-pad" />
                <InputField placeholder="pH" isNumber={true} onChangeText={(pH) => this.changeInput(pH, 'pH')} value={tank.pH > 0 ? tank.pH.toString() : ''} keyboardType="number-pad" />
                <InputField placeholder="Hardness" isNumber={true} onChangeText={(dH) => this.changeInput(dH, 'dH')} value={tank.dH > 0 ? tank.dH.toString() : ''} keyboardType="number-pad" />
                <View style={{flex: 1}} />
                <View style={styles.endSection}>
                  <Button title="Back" onPress={() => this.setState({toggleDimensions: true})} />

                  {
                    this.isValid() ? (
                      <Button title="Add Filter" onPress={this.postTank} />
                    ) : null
                  }
                </View>
              </View>
            )
          }
        </KeyboardAvoidingView>
      </View>
    );
  }
};


const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  sectionHeader: {
    fontSize: 32,
    textAlign: 'center'
  },
  tankImg: {
    flex: 1,
    alignItems: 'center',
    height: 500
  },
  nameField: {
    width: '100%',
    alignItems: 'center',
    padding: 16
  },
  wlSection: {
    flexDirection: 'row',
    padding: 8
  },
  depthSection: {
    flex: 2,
    width: '100%',
    alignItems: 'center',
    justifyContent: 'center',
  },
  dimensionField: {
    flex: 1,
  },
  nextSection: {
    flex: 1,
    justifyContent: 'space-evenly'
  },
  waterSection: {
    flex: 1,
    width: '100%',
    alignItems: 'center',
    padding: 16
  },
  endSection: {
    width: '50%',
    flex: 1,
    justifyContent: 'space-evenly'
  },
  error: {
    textAlign: 'center',
    backgroundColor: '#ce5040',
    padding: 8,
    borderRadius: 3,
    position: 'relative'
  }
})