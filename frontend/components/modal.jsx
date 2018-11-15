import React from 'react';
import { closeModal } from '../actions/modal_actions';
import { connect } from 'react-redux';
import RegistrationSelectContainer from './session_form/registration_select_container';
import SignupFormContainer from './session_form/signup_form_container';
import ArtistSignupContainer from './session_form/artist_signup_container';
import LoginFormContainer from './session_form/login_form_container';

function Modal({modal, closeModal}) {
  if (!modal) {
    return null;
  }
  let component;
  switch (modal) {
    case 'login':
      component = <LoginFormContainer />;
      break;
    case 'signup':
      component = <RegistrationSelectContainer />;
      break;
    case 'signup/user':
      component = <SignupFormContainer />;
      break;
    case 'signup/artist':
      component = <ArtistSignupContainer />;
      break;
    default:
      return null;
  }
  return (
    <div className="session-screen" onClick={closeModal}>
      <div className="modal-child" onClick={e => e.stopPropagation()}>
        { component }
      </div>
    </div>
  );
}

const mapStateToProps = state => {
  return {
    modal: state.ui.modal
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);
