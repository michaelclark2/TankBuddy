import constants from '../constants';

const makeHeader = (token) => {
  return {
    "Authorization": 'Bearer ' + token,
    "Content-Type": "application/json"
  };
}
const authenticate = async (token) => {
  return await fetch(constants.backendUrl + 'users/login', {headers: makeHeader(token)}).then(res => res.json());
}

export {authenticate}