import constants from '../constants';

export const searchSpecies = async (terms) => {
  const headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'fish/search?q=' + terms, {headers}).then(res => res.json());
}

export const postFish = async (fish) => {
  const headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'fish/add', {headers, method: 'POST', body: JSON.stringify(fish)});
}

export const deleteFish = async (id) => {
  const headers = await constants.makeHeader();
  return await fetch(constants.backendUrl + 'fish/' + id, {headers, method: 'DELETE'});
}