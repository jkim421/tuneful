import React from 'react';
import * as AlbumApiUtil from '../util/album_api_util';

export const RECEIVE_ALBUMS = "RECEIVE_ALBUMS";
export const RECEIVE_NEW_ALBUMS = "RECEIVE_NEW_ALBUMS";
export const RECEIVE_ALBUM = "RECEIVE_ALBUM";


export const receiveAlbums = (albums) => {
  return {
    type: RECEIVE_ALBUMS,
    albums,
  };
};

export const receiveNewAlbums = (albums) => {
  return {
    type: RECEIVE_NEW_ALBUMS,
    albums,
  };
};

export const receiveAlbum = (albums) => {
  return {
    type: RECEIVE_ALBUM,
    albums,
  };
};

export const fetchAlbums = filter => dispatch => {
  return AlbumApiUtil.fetchAlbums(filter).then(albums =>
    dispatch(receiveAlbums(albums)));
};

export const fetchNewAlbums = filter => dispatch => {
  return AlbumApiUtil.fetchAlbums(filter).then(albums =>
    dispatch(receiveNewAlbums(albums)));
};
