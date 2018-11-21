import React from 'react';
import * as SongApiUtil from '../util/song_api_util';

export const RECEIVE_SONGS = "RECEIVE_SONGS";
export const SET_CURRENT_SONG = "RECEIVE_CURRENT_SONG";

export const receiveSongs = (songs) => {
  return {
    type: RECEIVE_SONGS,
    songs,
  };
};

export const setCurrentSong = (song) => {
  return {
    type: SET_CURRENT_SONG,
    song,
  };
};

export const fetchSongs = (albumId) => dispatch => {
  return SongApiUtil.fetchSongs(albumId).then(songs =>
    dispatch(receiveSongs(songs)));
};
