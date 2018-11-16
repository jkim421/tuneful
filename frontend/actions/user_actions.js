import React from 'react';
import * as UserApiUtil from '../util/user_api_util';

export const ADD_TO_COLLECTION = "ADD_TO_COLLECTION";
export const REMOVE_FROM_COLLECTION = "REMOVE_FROM_COLLECTION";

export const addToCollection = (data) => {
  return {
    type: ADD_TO_COLLECTION,
    data,
  };
};

export const removeFromCollection = (data) => {
  return {
    type: REMOVE_FROM_COLLECTION,
    data,
  };
};

export const createCollectionAlbum = data => dispatch => {
  return UserApiUtil.createCollectionAlbum(data).then(collected =>
    dispatch(addToCollection(collected)));
};

export const deleteCollectionAlbum = albumId => dispatch => {
  return UserApiUtil.deleteCollectionAlbum(albumId).then( resId =>
    dispatch(removeFromCollection(resId)));
};
