import React from 'react';
import {
  View,
  Text,
  Button,
  StyleSheet,
  KeyboardAvoidingView,
  TouchableOpacity
} from 'react-native';

import {loginUser} from '../api/firebase';
import BrandTitle from '../components/BrandTitle';
import InputField from '../components/InputField';

export default class LoginScreen extends React.Component {
  static navigationOptions = {
    header: null
  }

  state = {
    user: {
      email: '',
      password: ''
    },
    isError: false,
    error: ''
  }

  changeEmail = (email) => {
    const {user} = {...this.state};
    user.email = email;
    this.setState({user});
  }

  changePass = (password) => {
    const {user} = {...this.state};
    user.password = password;
    this.setState({user});
  }

  login = () => {
    const {user} = this.state;
    loginUser(user)
      .catch(err => {
        this.setState({isError: true, error: err.message});
      });
  }
  goToSignUp = () => {
    this.props.navigation.navigate("Register");
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
        <BrandTitle />
        <View style={styles.loginForm}>
          { this.showError() }
          <InputField placeholder="Email" onChangeText={this.changeEmail} value={this.state.user.email} keyboardType="email-address" />
          <InputField placeholder="Password" onChangeText={this.changePass} textContentType="password" secureTextEntry={true} onSubmitEditing={this.login}/>
          <Button title="Login" onPress={this.login} />
          <TouchableOpacity style={styles.registerLink} onPress={this.goToSignUp}>
            <Text>Don't have an account?</Text>
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
  loginForm: {
    width: '100%',
    padding: 16,
    justifyContent: 'space-between',
    alignItems: 'center'
  },
  registerLink: {
    padding: 8
  },
  error: {
    textAlign: 'center',
    backgroundColor: '#ce5040',
    padding: 8,
    borderRadius: 3
  }
});