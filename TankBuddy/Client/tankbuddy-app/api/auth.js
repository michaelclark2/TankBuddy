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

const addUser = async (user) => {
  return await fetch(constants.backendUrl + 'users/register', { headers: {'Content-Type': 'application/json'}, method: 'POST', body: JSON.stringify(user)}).then(res => res.json());
}

export {authenticate, addUser};
