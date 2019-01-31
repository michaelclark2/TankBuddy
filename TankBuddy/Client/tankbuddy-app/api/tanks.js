import constants from '../constants';

export const postTank = async (tank) => {
  let headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'tanks/add', { headers, method: 'POST', body: JSON.stringify(tank)}).then(res => res.json());
}

export const getTanks = async () => {
  let headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'tanks', {headers}).then(res => res.json());
}
