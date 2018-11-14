import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import artistErrorsReducer from './artist_errors_reducer';

const errorsReducer = combineReducers({
  session: sessionErrorsReducer,
  artist: artistErrorsReducer,
});

export default errorsReducer;
