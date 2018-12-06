import React from 'react';
import { connect } from 'react-redux';
import UpdateForm from './user_form';
import { signup, login, receiveSessionErrors } from '../../actions/session_actions';

const mapStateToProps = (state) => {
  const errors = state.errors.session;
  let nameError bioError, locationError, websiteError;
  const user = state.entities.users[state.session.id] || {}

  errors.forEach( (error) => {
    if (error.includes("Name")) {
      usernameError = error;
    } else if (error.includes("Bio")) {
      passwordError = error;
    }
  } else if (error.includes("Location")) {
      passwordError = error;
    }
  } else if (error.includes("Website")) {
      passwordError = error;
    }
  });

  return {
    user: user,
    nameError: nameError || '',
    bioError: bioError || '',
    locationError: locationError || '',
    websiteError: websiteError || '',
    formType: 'Sign up',
    formClass: "signup-form",
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    processForm: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(receiveSessionErrors([])),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UpdateForm);
