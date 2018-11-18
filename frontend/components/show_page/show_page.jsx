import React from 'react';
import { Route } from 'react-router-dom';
import AlbumPageContainer from '../album_page/album_page_container';
import ArtistPageContainer from '../artist_page/artist_page_container';

const ShowPage = () => {
  return (
    <body className="show-body">
      <section>
        <Route path="/album/:albumId" component={AlbumPageContainer} />
        <Route path="/artist/:artistId" component={ArtistPageContainer} />
      <section>
    </body>
  );
};

export default ShowPage;
