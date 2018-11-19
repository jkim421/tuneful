import { RECEIVE_ARTIST_ERRORS } from '../actions/artist_actions';

const artistErrorsReducer = (state = [], action) => {
  debugger
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ARTIST_ERRORS:
      return action.errors;
    default:
      return state;
  }
};

export default artistErrorsReducer;
