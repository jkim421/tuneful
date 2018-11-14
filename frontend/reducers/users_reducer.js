import merge from 'lodash/merge';

import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { ADD_ARTIST } from '../actions/artist_actions';


const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { [action.user.id]: action.user });
    case ADD_ARTIST:
      return merge({}, state, { [action.artist.user.id]: action.artist.user });
    default:
      return state;
  }
};

export default usersReducer;
