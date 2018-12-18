import React from 'react';
import * as AlbumApiUtil from '../util/album_api_util';

export const RECEIVE_ALBUMS = "RECEIVE_ALBUMS";
export const RECEIVE_GENRE_ALBUMS = "RECEIVE_GENRE_ALBUMS";
export const RECEIVE_NEW_ALBUMS = "RECEIVE_NEW_ALBUMS";
export const RECEIVE_ALBUM = "RECEIVE_ALBUM";

export const receiveNewAlbums = ({albums, artists}) => {
  return {
    type: RECEIVE_NEW_ALBUMS,
    albums,
    artists,
  };
};

export const receiveAlbums = ({albums, artists}) => {
  return {
    type: RECEIVE_ALBUMS,
    albums,
    artists,
  };
};

export const receiveGenreAlbums = ({albums, artists}) => {
  return {
    type: RECEIVE_GENRE_ALBUMS,
    albums,
    artists,
  };
};

export const receiveAlbum = ({albums, artists}) => {
  return {
    type: RECEIVE_ALBUM,
    albums,
    artists,
  };
};

export const fetchAlbums = filter => dispatch => {
  return AlbumApiUtil.fetchAlbums(filter).then(albums =>
    dispatch(receiveAlbums(albums)));
};

export const fetchArtistAlbums = artistId => dispatch => {
  return AlbumApiUtil.fetchArtistAlbums(artistId).then(albums =>
    dispatch(receiveAlbums(albums)));
};

export const fetchAlbum = albumId => dispatch => {
  return AlbumApiUtil.fetchAlbum(albumId).then(album =>
    dispatch(receiveAlbum(album)));
};

export const fetchNewAlbums = filter => dispatch => {
  return AlbumApiUtil.fetchAlbums(filter).then(albums =>
    dispatch(receiveNewAlbums(albums)));
};

export const fetchGenreAlbums = genre => dispatch => {
  return AlbumApiUtil.fetchGenreAlbums(genre).then(albums =>
    dispatch(receiveGenreAlbums(albums)));
};

export const createAlbum = album => dispatch => {
  return AlbumApiUtil.createAlbum(album).then(returnedAlbum =>
    dispatch(receiveAlbum(returnedAlbum))
  );
};
