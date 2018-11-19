import merge from 'lodash/merge';

import {
  RECEIVE_ALBUMS,
  RECEIVE_ALBUM,
  RECEIVE_NEW_ALBUMS } from '../actions/album_actions';

const albumsReducer = (state = { new: [] }, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, state, action.albums.albums);
    case RECEIVE_NEW_ALBUMS:
      return merge({}, state, action.albums.albums, { new: Object.keys(action.albums.albums) });
    case RECEIVE_ALBUM:
      const album = Object.values(action.albums.albums);
      return merge ({}, state, { [album[0].id]: action[0] });
    default:
      return state;
  }
};

export default albumsReducer;
