import React from 'react';
import { connect } from 'react-redux';
import RegistrationSelect from './registration_select';
import { login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';

const mapDispatchToProps = (dispatch) => {
  return {
    demoUserLogin: (demoUser) => dispatch(login(demoUser)),
  };
};

export default connect(null, mapDispatchToProps)(RegistrationSelect);
