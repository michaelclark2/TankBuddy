import React from 'react';
import TankList from '../components/TankList';
import { getTanks } from '../api/tanks';

export default class MyTanksScreen extends React.Component {

  static navigationOptions = {
    title: 'My Tanks'
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
    return (
      <TankList navigation={this.props.navigation} tanks={tanks} />
    );
  }
};

