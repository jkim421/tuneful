import React from 'react';
import { connect } from 'react-redux';
import UpdateForm from './update_form';
import { updateArtist } from '../../actions/update_form_actions';

const mapStateToProps = (state) => {
  const errors = state.errors.session;
  let nameError, bioError, locationError, websiteError;
  const user = state.entities.users[state.session.id] || {};
  const artist = state.entities.artists[user.artist_id] || {};
  
  errors.forEach( (error) => {
    if (error.includes("Name")) {
      nameError = error;
    } else if (error.includes("Bio")) {
      bioError = error;
    } else if (error.includes("Location")) {
      locationError = error;
    } else if (error.includes("Website")) {
      websiteError = error;
    }
  });
  return {
    user: user,
    artist: artist,
    nameError: nameError || '',
    bioError: bioError || '',
    locationError: locationError || '',
    websiteError: websiteError || '',
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    processForm: (artist) => dispatch(updateArtist(artist)),
    // clearErrors: () => dispatch(receiveSessionErrors([])),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UpdateForm);
