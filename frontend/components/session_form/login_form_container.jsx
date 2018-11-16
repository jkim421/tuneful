import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login, receiveSessionErrors } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = (state) => {
  const errors = state.errors.session
  let loginError;
  if (errors[0] && errors[0].includes("Invalid")) {
    loginError = errors[0];
  }
  return {
    loginError: loginError || '',
    formType: 'Log in',
    formClass: "signup-form",
  };
};

const mapDispatchProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(login(user)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(receiveSessionErrors([])),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)).then(dispatch(closeModal())),
    otherForm: (
      <button className="session-footer-button" onClick={() => dispatch(openModal('signup'))}>
        Sign up
      </button>
      ),
    closeModal: () => dispatch(closeModal()),
  };
};

export default connect(mapStateToProps, mapDispatchProps)(SessionForm);
