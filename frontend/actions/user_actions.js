import React from 'react';
import * as UserApiUtil from '../util/user_api_util';
import {
  receiveCurrentUser,
  updateCurrentUser,
} from '../actions/session_actions';
import { receiveAlbums } from './album_actions';
import { receiveArtists } from './artist_actions';

export const RECEIVE_USER = "RECEIVE_USER";

export const receiveUser = (user) => {
  return {
    type: RECEIVE_USER,
    user,
  };
};

export const fetchUser = userId => dispatch => {
  return UserApiUtil.fetchUser(userId).then(user =>
    dispatch(receiveUser(user)));
};

export const fetchCollectionAlbums = collectionIds => dispatch => {
  return UserApiUtil.fetchCollectionAlbums(collectionIds).then(albums =>
    dispatch(receiveAlbums(albums)));
};

export const createCollectionAlbum = data => dispatch => {
  return UserApiUtil.createCollectionAlbum(data).then(user =>
    dispatch(receiveCurrentUser(user)));
};

export const deleteCollectionAlbum = data => dispatch => {
  return UserApiUtil.deleteCollectionAlbum(data).then( user =>
    dispatch(updateCurrentUser(user)));
};

export const createFollow = data => dispatch => {
  return UserApiUtil.createFollow(data).then(user =>
    dispatch(receiveCurrentUser(user)));
};

export const deleteFollow = data => dispatch => {
  return UserApiUtil.deleteFollow(data).then( user =>
    dispatch(updateCurrentUser(user)));
};

export const fetchFollowedArtists = artistIds => dispatch => {
  return UserApiUtil.fetchFollowedArtists(artistIds).then(artists =>
    dispatch(receiveArtists(artists)));
};
