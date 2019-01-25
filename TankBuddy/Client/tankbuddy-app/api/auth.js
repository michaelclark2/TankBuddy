import constants from '../constants';

const makeHeader = (token) => {
  return {
    "Authorization": 'Bearer ' + token,
    "Content-Type": "application/json"
  };
}
const authenticate = async (token) => {
  try {
    let res = await fetch(constants.backendUrl + 'users/login', {headers: makeHeader(token), method: 'GET'});
    let user = await res.json();
    return user;
  } catch (error) {
    console.error(error);
  }
}

export {authenticate}