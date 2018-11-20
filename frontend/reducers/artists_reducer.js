import merge from 'lodash/merge';
import {
  ADD_ARTIST,
  RETRIEVE_ARTIST,
  RECEIVE_ARTISTS } from '../actions/artist_actions';
import {
  RECEIVE_ALBUMS,
  RECEIVE_ALBUM } from '../actions/album_actions';
import { RECEIVE_USER } from '../actions/user_actions';

const artistsReducer = (state = {}, action) => {
  switch(action.type) {
    case ADD_ARTIST:
    case RETRIEVE_ARTIST:
      return merge({}, state, { [action.artist.id]: action.artist });
    case RECEIVE_ARTISTS:
      return merge({}, state, action.artists)
    case RECEIVE_USER:
      if (action.user.artist) {
        return merge({}, state, { [action.user.artist.id]: action.user.artist} );
      } else {
        return state;
      }
    case RECEIVE_ALBUM:
      const artist = Object.values(action.album.artists);
      return merge({}, state, { [artist[0].id]: artist[0] });
    case RECEIVE_ALBUMS:
      return merge({}, state, action.albums.artists);
    default:
      return state;
  }
};

export default artistsReducer;
