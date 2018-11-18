import merge from 'lodash/merge';

import { RECEIVE_ALBUMS, RECEIVE_ALBUM, RECEIVE_NEW_ALBUMS } from '../actions/album_actions';

const albumsReducer = (state = { new: [] }, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, state, action.albums);
    case RECEIVE_NEW_ALBUMS:
      return merge({}, state, action.albums, { new: Object.keys(action.albums) })
    case RECEIVE_ALBUM:
      return merge ({}, state, { [action.album.id]: action.album });
    default:
      return state;
  }
};

export default albumsReducer;
