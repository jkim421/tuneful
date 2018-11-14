import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = (state) => {
  const errors = state.errors.session
  let loginError;
  if (errors[0] && errors[0].includes("Invalid")) {
    loginError = errors[0];
  }
  return {
    loginError: loginError || '',
    linkToForm: <Link className="session-footer-button" to='/signup'>Sign up</Link>,
    formType: 'Log in',
    formClass: "signup-form",
  };
};

const mapDispatchProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(login(user)),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)),
  };
};

export default connect(mapStateToProps, mapDispatchProps)(SessionForm);
