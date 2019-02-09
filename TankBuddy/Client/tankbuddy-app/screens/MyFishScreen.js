import React from 'react';
import FishList from '../components/FishList';
import { getTanks } from '../api/tanks';

export default class MyTanksScreen extends React.Component {

  static navigationOptions = {
    title: 'My Fish'
  }

  state = {
    tanks: [],
  }

  componentDidMount () {
    getTanks()
      .then(tanks => {
        this.setState({tanks});
      })
      .catch(console.error);
  }

  render () {
    const {tanks} = this.state;
    const fish = tanks.reduce((fish, tank) => tank.fish.length > 0 ? [...fish, ...tank.fish] : fish, []);
    return (
      <FishList navigation={this.props.navigation} fish={fish} />
    );
  }
};

