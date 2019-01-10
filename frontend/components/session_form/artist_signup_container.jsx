import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { signup, login, receiveSessionErrors } from '../../actions/session_actions';
import { createArtist } from '../../actions/artist_actions';
import { Link } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => {
  const errors = state.errors.session.concat(state.errors.artist);
  let emailError, usernameError, passwordError, bandnameError;
  errors.forEach( (error) => {
    if (error.includes("Username")) {
      usernameError = error;
    } else if (error.includes("Email")) {
      emailError = error;
    } else if (error.includes("Password")) {
      passwordError = error;
    } else if (error.includes("Name")) {
      bandnameError = error;
    }
  });

  return {
    emailError: emailError || '',
    usernameError: usernameError || '',
    passwordError: passwordError || '',
    bandnameError: bandnameError || '',
    formType: 'Sign up as an artist',
    formClass: "signup-form",
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    processForm: (artist) => dispatch(createArtist(artist)),
    closeModal: () => dispatch(closeModal()),
    clearErrors: () => dispatch(receiveSessionErrors([])),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)).then(dispatch(closeModal())),
    otherForm: (
      <button className="session-footer-button" onClick={() => dispatch(openModal('login'))}>
        Log in
      </button>
    ),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
