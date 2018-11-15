import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import SignupFormContainer from './session_form/signup_form_container';
import ArtistSignupContainer from './session_form/artist_signup_container';
import LoginFormContainer from './session_form/login_form_container';
import RegistrationSelectContainer from './session_form/registration_select_container';
import HeaderSelect from './header/header_select';
import ArtistPageContainer from './artist_page/artist_page_container';
import Modal from './modal';

const App = () => {
  return (
    <div>
      <Modal />
      <header>
        <Route path = "/" component={HeaderSelect} />
      </header>
      <section>
        <Route path="/artist/:artistId" component={ArtistPageContainer} />
      </section>
    </div>
  );
};

export default App;
