import React from 'react';
import * as ArtistApiUtil from '../util/artist_api_util';
import * as UserApiUtil from '../util/user_api_util';
import { receiveArtist } from './artist_actions';

export const updateArtist = artistId => dispatch => {
  return ArtistApiUtil.updateArtist(artistId).then(artist =>
    dispatch(receiveArtist(artist)));
};
