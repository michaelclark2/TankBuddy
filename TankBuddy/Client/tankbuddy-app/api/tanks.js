import constants from '../constants';
import {AsyncStorage} from 'react-native';

const makeHeader = async () => {
  let token = await AsyncStorage.getItem('token');
  return {
    Authorization: 'Bearer ' + token,
    'Content-Type': 'application/json'
  }
}

export const postTank = async (tank) => {
  let headers = await makeHeader();
  return await fetch(constants.backendUrl + 'tanks/add', { headers, method: 'POST', body: JSON.stringify(tank)}).then(res => res.json());
}
