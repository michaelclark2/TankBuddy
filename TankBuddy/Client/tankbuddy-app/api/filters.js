import constants from '../constants';

export const postFilter = async (tank) => {
  const headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'filters/add', { headers, method: 'POST', body: JSON.stringify(tank)});
}