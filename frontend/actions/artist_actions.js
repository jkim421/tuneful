import React from 'react';
import * as ArtistApiUtil from '../util/artist_api_util';
import { receiveSessionErrors } from './session_actions';

export const ADD_ARTIST = 'CREATE_ARTIST';
export const RETRIEVE_ARTIST = 'RETRIEVE_ARTIST';
export const RECEIVE_ARTIST_ERRORS = 'RECEIVE_ARTIST_ERRORS';

export const addArtist = (artist) => {
  return {
    type: ADD_ARTIST,
    artist,
  };
};

export const retrieveArtist = (artist) => {
  return {
    type: RETRIEVE_ARTIST,
    artist,
  };
};

export const receiveArtistErrors = (errors) => {
  return {
    type: RECEIVE_ARTIST_ERRORS,
    errors,
  };
};

export const createArtist = artist => dispatch => {
  return ArtistApiUtil.createArtist(artist).then(returnedArtist =>
    dispatch(addArtist(returnedArtist)),
    errors => dispatch(receiveArtistErrors(errors.responseJSON))
  );
};

export const fetchArtist = artistId => dispatch => {
  return ArtistApiUtil.fetchArtist(artistId).then(returnedArtist =>
    dispatch(retrieveArtist(returnedArtist)),
    errors => dispatch(receiveArtistErrors(errors.responseJSON))
  );
};
