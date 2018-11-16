import { combineReducers } from 'redux';
import entitiesReducer from './entities_reducer';
import filtersReducer from './filters_reducer'
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import uiReducer from './ui_reducer';

const rootReducer = combineReducers({
  entities: entitiesReducer,
  filters: filtersReducer,
  session: sessionReducer,
  errors: errorsReducer,
  ui: uiReducer,
});

export default rootReducer;
