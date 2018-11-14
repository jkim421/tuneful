import {
  RECEIVE_CURRENT_USER,
  LOGOUT_CURRENT_USER,
  RECEIVE_SESSION_ERRORS } from '../actions/session_actions';
import { ADD_ARTIST } from '../actions/artist_actions';

const nullUser = Object.freeze( { id: null } );

const sessionReducer = (state = nullUser, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return { id: action.user.id };
    case LOGOUT_CURRENT_USER:
      return nullUser;
    case ADD_ARTIST:
      return { id: action.artist.user.id };
    default:
      return state;
  }
};

export default sessionReducer;
