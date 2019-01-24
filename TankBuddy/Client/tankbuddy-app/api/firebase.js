import firebase from 'firebase';
import constants from '../constants';

firebase.initializeApp(constants.firebaseConfig);

export default firebase;

const loginUser = (user) => {
  return firebase.auth().signInWithEmailAndPassword(user.email, user.password);
};

const logoutUser = () => {
  return firebase.auth().signOut();
}

export { loginUser, logoutUser };

