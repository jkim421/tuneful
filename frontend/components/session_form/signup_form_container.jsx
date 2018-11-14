import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { signup, login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = (state) => {
  return {
    errors: state.errors.session,
    linkToForm: <Link className="session-footer-button" to='/login'>Log in</Link>,
    formType: 'Sign up',
    formClass: "signup-form",
  };
};

const mapDispatchProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(signup(user)),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)),
  };
};

export default connect(mapStateToProps, mapDispatchProps)(SessionForm);
