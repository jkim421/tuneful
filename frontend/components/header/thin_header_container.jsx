import React from 'react';
import { connect } from 'react-redux';
import ThinHeader from './thin_header';
import { logout } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => {
  return {
    currentUser: state.entities.users[state.session.id],
    loggedIn: Boolean(state.session.id),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
    signupForm: (
      <button className="thin-header-session thin-header-actions" onClick={() => dispatch(openModal('signup'))}>
        sign up
      </button>
    ),
    loginForm: (
      <button className="thin-header-session thin-header-actions" onClick={() => dispatch(openModal('login'))}>
        log in
      </button>
    ),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ThinHeader);
