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


export default class AddTankScreen extends React.Component {

  state = {
    tank: {
      name: '',
      userId: this.props.navigation.getParam('userId'),
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
  changeFormView = () => {
    const {tank} = this.state;
    if (tank.width && tank.length && tank.depth && tank.name) {
      this.setState({toggleDimensions: false})
    }
    else {
      this.setState({isError: true, error: "All fields required"})
    }
  }
  changeInput = (input, key, isString = false) => {
    const {tank} = {...this.state};
    tank[key] = input;
    if (isString) {
    }
    // else if (input contains '.') {
    // }
    else {
      // tank[key] = input * 1;
    }

    this.setState({tank})
  }

  render () {
    const {tank} = this.state;

    return (
      <View style={styles.container}>

        <View style={styles.nameField}>
          <InputField placeholder="Name" value={tank.name} onChangeText={(name) => this.changeInput(name, "name", true)}/>
        </View>
        <KeyboardAvoidingView style={styles.container} enabled behavior="padding">
          {
            this.state.toggleDimensions ? (
              <ImageBackground source={require('../assets/tank.png')} style={styles.tankImg} imageStyle={{resizeMode: 'contain', margin: 16}}>
                <Text style={styles.sectionHeader}>Dimensions</Text>
                <View style={styles.wlSection}>
                  <InputField style={styles.dimensionField} placeholder="Width" isNumber={true} onChangeText={(width) => this.changeInput(width, 'width')} value={tank.width > 0 ? tank.width.toString() : ''} keyboardType="number-pad" />
                  <InputField style={styles.dimensionField} placeholder="Length" isNumber={true} onChangeText={(length) => this.changeInput(length, 'length')} value={tank.length > 0 ? tank.length.toString() : ''} keyboardType="number-pad" />
                </View>
                <View style={styles.depthSection}>
                  <InputField style={{width: '50%'}} placeholder="Depth" isNumber={true} onChangeText={(depth) => this.changeInput(depth, 'depth')} value={tank.depth > 0 ? tank.depth.toString() : ''} keyboardType="number-pad" />
                </View>
                <Button title="Enter Water Conditions" onPress={this.changeFormView}/>
              </ImageBackground>
            ) : (
              <View style={styles.nameField}>
                <Text style={styles.sectionHeader}>Water Conditions</Text>
                <InputField placeholder="Temperature" isNumber={true} onChangeText={(temp) => this.changeInput(temp, 'temp')} value={tank.temp > 0 ? tank.temp.toString() : ''} keyboardType="number-pad" />
                <InputField placeholder="pH" isNumber={true} onChangeText={(pH) => this.changeInput(pH, 'pH')} value={tank.pH > 0 ? tank.pH.toString() : ''} keyboardType="number-pad" />
                <InputField placeholder="Hardness" isNumber={true} onChangeText={(dH) => this.changeInput(dH, 'dH')} value={tank.dH > 0 ? tank.dH.toString() : ''} keyboardType="number-pad" />
                <Button title="Enter Dimensions" onPress={() => this.setState({toggleDimensions: true})} />
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
    flex: 1,
    width: '100%',
    alignItems: 'center',
    justifyContent: 'center',
  },
  dimensionField: {
    flex: 1,
  }
})