import React from 'react';
import { connect } from 'react-redux';
import UserPage from './user_page';

import { fetchUser } from '../../actions/user_actions';
import { fetchArtist } from '../../actions/artist_actions';
import { fetchArtistAlbums } from '../../actions/album_actions';
import { fetchCollectionAlbums } from '../../actions/user_actions';
import { fetchFollowedArtists } from '../../actions/user_actions';
import { selectDiscog } from '../../selectors/albums_selectors';
import { selectCollection } from '../../selectors/albums_selectors';
import { selectFollows } from '../../selectors/artists_selectors';

const mapStateToProps = (state, ownProps) => {
  debugger
  const userId = ownProps.match.params.userId;
  const user = state.entities.users[userId] || null;
  let artist;
  if (user) {
    if (user.artist_id) {
      artist = state.entities.artists[user.artist_id];
    }
  } else {
    artist = null;
  }
  return {
    user,
    artist,
    discog: artist ? selectDiscog(state.entities.albums, artist.album_ids) : [],
    userFollows: user ? state.entities.users[userId].user_follow_ids : [],
    userFollowedArtists: user ? selectFollows(
      state.entities.artists, state.entities.users[userId].user_follow_ids) : [],
    userCollection: user ? state.entities.users[userId].user_collection_ids : [],
    userCollectionAlbums: user ? selectCollection(
      state.entities.albums, state.entities.users[userId].user_collection_ids) : [],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchUser: (userId) => dispatch(fetchUser(userId)),
    fetchArtistAlbums: (artistId) => dispatch(fetchArtistAlbums(artistId)),
    fetchCollectionAlbums: (collectionIds) => dispatch(fetchCollectionAlbums(collectionIds)),
    fetchFollowedArtists: (followIds) => dispatch(fetchFollowedArtists(followIds)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UserPage);
