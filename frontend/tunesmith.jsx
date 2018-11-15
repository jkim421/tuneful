import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import { signup } from './actions/session_actions'
import configureStore from './store/store';
import { login, logout } from './actions/session_actions';
import { retrieveAlbums } from './util/album_api_util';

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  let store;
  if (window.currentUser) {
  const preloadedState = {
    entities: {
      users: { [window.currentUser.id]: window.currentUser }
    },
    session: { id: window.currentUser.id }
  };
  store = configureStore(preloadedState);
  delete window.currentUser;
} else {
  store = configureStore();
}

  // FOR TESTING DELETE
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.retrieveAlbums = retrieveAlbums;

  ReactDOM.render(<Root store={ store }/>, rootEl);
})
