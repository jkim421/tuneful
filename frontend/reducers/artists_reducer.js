import merge from 'lodash/merge';
import {
  ADD_ARTIST,
  RETRIEVE_ARTIST } from '../actions/artist_actions';

const artistsReducer = (state = {}, action) => {
  switch(action.type) {
    case ADD_ARTIST:
    case RETRIEVE_ARTIST:
      return merge({}, state, { [action.artist.artist.id]: action.artist.artist });
    default:
      return state;
  }
};

export default artistsReducer;
