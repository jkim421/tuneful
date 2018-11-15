import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import Modal from './modal';
import HeaderSelect from './header/header_select';
import ArtistPageContainer from './artist_page/artist_page_container';
import HomePageContainer from './home_page/home_page_container';

const App = () => {
  return (
    <div>
      <Modal />
      <header>
        <Route path = "/" component={HeaderSelect} />
      </header>
      <section>
        <Route path="/" component={HomePageContainer} />
        <Route path="/artist/:artistId" component={ArtistPageContainer} />
      </section>
    </div>
  );
};

export default App;
