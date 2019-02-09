import React from 'react';
import {Button, withTheme} from 'react-native-elements';


const SquareButton = (props) => <Button {...props.theme.SquareButton} {...props} />

export default withTheme(SquareButton);