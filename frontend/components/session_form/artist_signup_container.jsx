import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { signup, login } from '../../actions/session_actions';
import { createArtist } from '../../actions/artist_actions';
import { Link } from 'react-router-dom';

const mapStateToProps = (state) => {
  const errors = state.errors.artist;
  let emailError, usernameError, passwordError, nameError;
  errors.forEach( (error) => {
    if (error.includes("Username")) {
      usernameError = error;
    } else if (error.includes("Email")) {
      emailError = error;
    } else if (error.includes("Password")) {
      passwordError = error;
    } else if (error.includes("Name")) {
      nameError = error;
    }
  });

  return {
    emailError: emailError || '',
    usernameError: usernameError || '',
    passwordError: passwordError || '',
    nameError: nameError || '',
    linkToForm: <Link className="session-footer-button" to='/login'>Log in</Link>,
    formType: 'Sign up as an artist',
    formClass: "artist-signup-form",
  };
};

const mapDispatchProps = (dispatch) => {
  return {
    processForm: (artist) => dispatch(createArtist(artist)),
    demoUserLogin: (demoUser) => dispatch(login(demoUser)),
  };
};

export default connect(mapStateToProps, mapDispatchProps)(SessionForm);
