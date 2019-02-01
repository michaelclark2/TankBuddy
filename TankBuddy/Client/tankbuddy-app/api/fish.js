import constants from '../constants';

export const searchSpecies = async (terms) => {
  const headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'fish/search?q=' + terms, {headers}).then(res => res.json())
}