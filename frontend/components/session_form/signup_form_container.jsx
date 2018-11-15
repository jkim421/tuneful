import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { signup, login, receiveSessionErrors } from '../../actions/session_actions';
import { Link } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => {
  const errors = state.errors.session;
  let emailError, usernameError, passwordError;

  errors.forEach( (error) => {
    if (error.includes("Username")) {
      usernameError = error;
    } else if (error.includes("Email")) {
      emailError = error;
    } else if (error.includes("Password")) {
      passwordError = error;
    };
  });

  return {
    emailError: emailError || '',
    usernameError: usernameError || '',
    passwordError: passwordError || '',
    formType: 'Sign up',
    formClass: "signup-form",
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(receiveSessionErrors([])),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)).then(dispatch(closeModal())),
    otherForm: (
      <button className="session-footer-button" onClick={() => dispatch(openModal('login'))}>
        Log in
      </button>
    ),
    closeModal: () => dispatch(closeModal()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
