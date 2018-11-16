import merge from 'lodash/merge';

import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { ADD_ARTIST } from '../actions/artist_actions';
import {
  ADD_TO_COLLECTION,
  REMOVE_FROM_COLLECTION,
  UPDATE_COLLECTION
} from '../actions/user_actions';


const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return merge({}, state, { [action.user.id]: action.user });
    case ADD_ARTIST:
      return merge({}, state, { [action.artist.user.id]: action.artist.user });
    case ADD_TO_COLLECTION:
      const user = state[action.data.user_id];
      user.user_collection_ids.push(action.data.album_id)
      return merge({}, state, { [action.data.user_id]: user });
    case REMOVE_FROM_COLLECTION:

    default:
      return state;
  }
};

export default usersReducer;
