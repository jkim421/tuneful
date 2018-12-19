import React from 'react';
import * as GenreApiUtil from '../util/genre_api_util';

export const RECEIVE_GENRES = "RECEIVE_GENRES";

export const receiveGenres = (data) => {
  return {
    type: RECEIVE_GENRES,
    genres: data,
  };
};

export const retrieveGenres = filter => dispatch => {
  return GenreApiUtil.fetchGenres().then(genres =>
    dispatch(receiveGenres(genres)));
};
