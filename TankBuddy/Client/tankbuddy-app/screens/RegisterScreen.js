import React from 'react';
import {
  View,
  StyleSheet,
  KeyboardAvoidingView,
  TouchableOpacity
} from 'react-native';

import {Text, Button, Image} from 'react-native-elements';

import {registerUser} from '../api/firebase';
import { addUser } from '../api/auth';
import InputField from '../components/InputField';

export default class RegisterScreen extends React.Component {
  static navigationOptions = {
    header: null
  }

  state = {
    user: {
      email: '',
      name: '',
      password: '',
      metric: true,
    },
    isError: false,
    error: ''
  }

  changeEmail = (email) => {
    const {user} = {...this.state};
    user.email = email;
    this.setState({user});
  }

  changeName = (name) => {
    const {user} = {...this.state};
    user.name = name;
    this.setState({user});
  }

  changePass = (password) => {
    const {user} = {...this.state};
    user.password = password;
    this.setState({user});
  }

  register = () => {
    const {user} = this.state;
    registerUser(user)
      .then((u) => {
        user.uid = u.user.uid;
        addUser(user);
      }).catch(err => {
        this.setState({isError: true, error: err.message})
      });

  }
  goToLogin = () => {
    this.props.navigation.navigate("Login");
  }

  showError = () => {
    const {error, isError} = this.state;
    if (isError) {
      return <Text style={styles.error}>{error}</Text>
    }
    return null
  }
  render () {
    return (
      <KeyboardAvoidingView style={styles.container} behavior="padding" enabled>
        <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
          <Image source={require('../assets/icon.png')} style={{width: 200, height: 200}}/>
        </View>
        <View style={styles.registerForm}>
          { this.showError() }
          <InputField placeholder="Email" onChangeText={this.changeEmail} value={this.state.user.email} keyboardType="email-address"/>
          <InputField placeholder="Name" onChangeText={this.changeName} value={this.state.user.name} />
          <InputField placeholder="Password" onChangeText={this.changePass} textContentType="password" secureTextEntry={true} onSubmitEditing={this.login}/>
          <Button title="Register" onPress={this.register} />
          <TouchableOpacity style={styles.loginLink} onPress={this.goToLogin}>
            <Text>Already have an account?</Text>
          </TouchableOpacity>
        </View>
      </KeyboardAvoidingView>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#35a58b',
    alignItems: 'center',
    justifyContent: 'space-around',
  },
  registerForm: {
    width: '100%',
    padding: 16,
    justifyContent: 'space-between',
    alignItems: 'center'
  },
  loginLink: {
    padding: 8
  },
  error: {
    textAlign: 'center',
    backgroundColor: '#ce5040',
    padding: 8,
    borderRadius: 3
  }
});