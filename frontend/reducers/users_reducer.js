import merge from 'lodash/merge';

import { RECEIVE_CURRENT_USER, UPDATE_CURRENT_USER } from '../actions/session_actions';
import { ADD_ARTIST } from '../actions/artist_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { [action.user.id]: action.user });
    case ADD_ARTIST:
      return merge({}, state, { [action.artist.user.id]: action.artist.user });
    case UPDATE_CURRENT_USER:
      let updateUser = merge({}, state);
      updateUser[action.user.id].user_collection_ids = [];
      updateUser[action.user.id].user_follow_ids = [];
      const newState = merge(updateUser, { [action.user.id]: action.user });
      return newState
    default:
      return state;
  }
};

export default usersReducer;
