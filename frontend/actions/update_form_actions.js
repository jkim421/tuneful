import React from 'react';
import * as ArtistApiUtil from '../util/artist_api_util';
import * as UserApiUtil from '../util/user_api_util';
import { receiveArtist } from './artist_actions';
import { receiveArtistErrors } from './artist_actions';

export const updateArtist = artist => dispatch => {
  return ArtistApiUtil.updateArtist(artist).then(updatedArtist =>
    dispatch(receiveArtist(updatedArtist)),
    errors => dispatch(receiveArtistErrors(errors.responseJSON))
  );
};
