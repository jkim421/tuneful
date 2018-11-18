import React from 'react';
import * as AlbumApiUtil from '../util/album_api_util';

export const RECEIVE_SONGS = "RECEIVE_SONGS";

export const receiveSongs = (songs) => {
  return {
    type: RECEIVE_SONGS,
    songs,
  };
};

export const fetchSongs = (albumId) => dispatch => {
  return AlbumApiUtil.fetchSongs(albumId).then(songs =>
    dispatch(receiveSongs(songs)));
};
