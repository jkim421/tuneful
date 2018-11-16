import React from 'react';
import * as UserApiUtil from '../util/user_api_util';
import {
  receiveCurrentUser,
  updateCurrentUser,
} from '../actions/session_actions';



export const createCollectionAlbum = data => dispatch => {
  return UserApiUtil.createCollectionAlbum(data).then(user =>
    dispatch(receiveCurrentUser(user)));
};

export const deleteCollectionAlbum = data => dispatch => {
  return UserApiUtil.deleteCollectionAlbum(data).then( user =>
    dispatch(updateCurrentUser(user)));
};
