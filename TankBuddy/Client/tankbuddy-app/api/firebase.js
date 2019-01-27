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

const registerUser = (user) => {
  return firebase.auth().createUserWithEmailAndPassword(user.email, user.password);
}

export { loginUser, logoutUser, registerUser };

