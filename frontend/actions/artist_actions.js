import React from 'react';
import * as ArtistApiUtil from '../util/artist_api_util';
import { receiveSessionErrors } from './session_actions';

export const ADD_ARTIST = 'CREATE_ARTIST';
export const RECEIVE_ARTIST = 'RECEIVE_ARTIST';
export const RECEIVE_ARTISTS = 'RECEIVE_ARTISTS';
export const RECEIVE_ARTIST_ERRORS = 'RECEIVE_ARTIST_ERRORS';

export const addArtist = (artist) => {
  return {
    type: ADD_ARTIST,
    artist,
  };
};

export const receiveArtist = (artist) => {
  return {
    type: RECEIVE_ARTIST,
    artist,
  };
};

export const receiveArtists = (artists) => {
  return {
    type: RECEIVE_ARTISTS,
    artists
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
    dispatch(receiveArtist(returnedArtist)),
    errors => dispatch(receiveArtistErrors(errors.responseJSON))
  );
};
