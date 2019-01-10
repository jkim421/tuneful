import merge from 'lodash/merge';
import {
  CREATE_ARTIST,
  RECEIVE_ARTIST,
  RECEIVE_ARTISTS } from '../actions/artist_actions';
import {
  RECEIVE_ALBUMS,
  RECEIVE_ALBUM } from '../actions/album_actions';
import { RECEIVE_USER } from '../actions/user_actions';

const artistsReducer = (state = {}, action) => {
  switch(action.type) {
    case CREATE_ARTIST:
      return merge({}, state, { [action.artist.artist.id]: action.artist.artist });
    case RECEIVE_ARTIST:
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
      const artist = Object.values(action.artists);
      return merge({}, state, { [artist[0].id]: artist[0] });
    case RECEIVE_ALBUMS:
      if (!!action.albums) {
        return merge({}, state, action.albums.artists);
      } else {
        return state;
    }
    default:
      return state;
  }
};

export default artistsReducer;
