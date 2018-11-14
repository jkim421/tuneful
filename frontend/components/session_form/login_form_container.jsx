import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = (state) => {
  return {
    errors: state.errors.session,
    linkToForm: <Link className="session-footer-button" to='/signup'>Sign up</Link>,
    formType: 'Log in',
    formClass: "login-form",
  };
};

const mapDispatchProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(login(user)),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)),
  };
};

export default connect(mapStateToProps, mapDispatchProps)(SessionForm);
