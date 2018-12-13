import merge from 'lodash/merge';

import {
  RECEIVE_ALBUMS,
  RECEIVE_ALBUM,
  RECEIVE_NEW_ALBUMS,
  RECEIVE_GENRE_ALBUMS } from '../actions/album_actions';

const albumsReducer = (state = { new: [] }, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
    case RECEIVE_GENRE_ALBUMS:
      return merge({}, state, action.albums);
    case RECEIVE_NEW_ALBUMS:
      return merge({}, state, action.albums, { new: Object.keys(action.albums) });
    case RECEIVE_ALBUM:
      const album = Object.values(action.albums)[0];
      return merge ({}, state, { [album.id]: album });
    default:
      return state;
  }
};

export default albumsReducer;
