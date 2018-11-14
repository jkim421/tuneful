import React from 'react';
import * as ArtistApiUtil from '../util/artist_api_util';

export const CREATE_ARTIST = 'CREATE_ARTIST';

export const createArtist = (artist) => {
  return {
    method: CREATE_ARTIST,
    artist
  };
};
