import React from 'react';
import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import DonateForm from './donate_form';

import { closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state, ownProps) => {
  const albumId = ownProps.location.pathname.slice(8);
  return {
    artist: state.entities.albums[albumId].artist,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeModal: () => dispatch(closeModal()),
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(DonateForm));
