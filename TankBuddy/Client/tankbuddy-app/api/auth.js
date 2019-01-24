import constants from '../constants';
import {AsyncStorage} from 'react-native';

const makeHeader = (token) => {
  return {Authorization: 'Bearer ' + token};
}

const authenticate = async (token) => {
  return await fetch(constants.backendUrl + 'users/login', {headers: makeHeader(token)}).then(res => res.json());
}

export {authenticate}