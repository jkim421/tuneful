import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import Modal from './modal';
import HeaderSelect from './header/header_select';
import HomePageContainer from './home_page/home_page_container';
import ArtistPageContainer from './artist_page/artist_page_container';
import AlbumPageContainer from './album_page/album_page_container';

const App = () => {
  return (
    <div>
      <Modal />
      <header>
        <HeaderSelect />
      </header>
      <section>
        <Route exact path="/" component={HomePageContainer} />
        <Route path="/album/:albumId" component={AlbumPageContainer} />
        <Route path="/artist/:artistId" component={ArtistPageContainer} />
      </section>
    </div>
  );
};

export default App;
