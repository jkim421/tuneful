import React from 'react';
import * as SessionApiUtil from '../util/session_api_util';
import { closeModal } from './modal_actions';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const UPDATE_CURRENT_USER = 'UPDATE_CURRENT_USER';

export const receiveCurrentUser = (user) => {
  return {
    type: RECEIVE_CURRENT_USER,
    user: user,
  };
};

export const logoutCurrentUser = () => {
  return {
    type: LOGOUT_CURRENT_USER,
  };
};

export const receiveSessionErrors = (errors) => {
  return {
    type: RECEIVE_SESSION_ERRORS,
    errors,
  };
};

export const updateCurrentUser = (user) => {
  return {
    type: UPDATE_CURRENT_USER,
    user: user,
  };
};

export const signup = user => dispatch => {
  return SessionApiUtil.signup(user).then( returnedUser =>
    dispatch(receiveCurrentUser(returnedUser)),
    errors => dispatch(receiveSessionErrors(errors.responseJSON))
  );
};

export const login = user => dispatch => {
  return SessionApiUtil.login(user).then( returnedUser =>
    dispatch(receiveCurrentUser(returnedUser)),
    errors => dispatch(receiveSessionErrors(errors.responseJSON))
  );
};

export const logout = () => dispatch => {
  return SessionApiUtil.logout().then( () =>
    dispatch(logoutCurrentUser()),
    errors => dispatch(receiveSessionErrors(errors.responseJSON))
  );
};
