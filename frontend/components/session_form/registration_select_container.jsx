import React from 'react';
import { connect } from 'react-redux';
import RegistrationSelect from './registration_select';
import { login } from '../../actions/session_actions';
import { Link } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapDispatchToProps = (dispatch) => {
  return {
    demoUserLogin: (demoUser) => dispatch(login(demoUser)).then(dispatch(closeModal())),
    fanSignup: (
      <button className="registration-link user-registration" onClick={() => dispatch(openModal('signup/user'))}>
        Sign up as a fan
      </button>
    ),
    artistSignup: (
      <button className="registration-link artist-registration" onClick={() => dispatch(openModal('signup/artist'))}>
        Sign up as an artist
      </button>
    ),
    closeModal: () => dispatch(closeModal()),
  };
};

export default connect(null, mapDispatchToProps)(RegistrationSelect);
