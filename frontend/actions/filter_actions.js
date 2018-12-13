import React from 'react';
import * as AlbumApiUtil from '../util/album_api_util';

export const UPDATE_ALBUM_FILTER = "UPDATE_ALBUM_FILTER";
export const UPDATE_ARTIST_FILTER = "UPDATE_ARTIST_FILTER";

export const RECEIVE_ALBUMS = "RECEIVE_ALBUMS";
export const RECEIVE_ALBUM = "RECEIVE_ALBUM";

export const SET_EXPLORE_GENRE = "SET_EXPLORE_GENRE";


export const retrieveFeaturedAlbums = (albums) => {
  return {
    type: RECEIVE_FEATURED_ALBUMS,
    albums,
  };
};

export const retrieveNewAlbums = (albums) => {
  return {
    type: RECEIVE_FEATURED_ALBUMS,
    albums,
  };
};

export const setExploreGenre = (genreId) => {
  return {
    type: SET_EXPLORE_GENRE,
    genreId,
  };
};
