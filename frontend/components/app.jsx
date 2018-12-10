import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import Modal from './modal';
import HeaderSelect from './header/header_select';
import HomePageContainer from './home_page/home_page_container';
import ArtistPageContainer from './artist_page/artist_page_container';
import AlbumPageContainer from './album_page/album_page_container';
import UserPageContainer from './user_page/user_page_container';
import UpdateFormContainer from './update_form/update_form_container';
import Footer from './footer/footer';

const App = () => {
  return (
    <div>
      <Modal />
      <header>
        <HeaderSelect />
      </header>
      <section>
        <Switch>
          <Route exact path="/" component={HomePageContainer} />
          <Route path="/albums/:albumId" component={AlbumPageContainer} />
          <Route path="/artists/:artistId" component={ArtistPageContainer} />
          <Route path="/users/:userId/edit" component={UpdateFormContainer} />
          <Route path="/users/:userId" component={UserPageContainer} />
        </Switch>
      </section>
      <Footer />
    </div>
  );
};

export default App;
