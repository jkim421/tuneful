import React from 'react';
import { connect } from 'react-redux';
import UploadForm from './upload_form';
import { updateArtist } from '../../actions/update_form_actions';

const mapStateToProps = (state) => {
  const user = state.entities.users[state.session.id] || {};
  const artist = state.entities.artists[user.artist_id] || {};

  return {
    user: user,
    artist: artist,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    processForm: (artist) => dispatch(updateArtist(artist)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UploadForm);
