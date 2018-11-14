import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import SignupFormContainer from './session_form/signup_form_container';
import ArtistSignupContainer from './session_form/artist_signup_container';
import LoginFormContainer from './session_form/login_form_container';
import RegistrationSelectContainer from './session_form/registration_select_container';
import HeaderSelect from './header/header_select';

const App = () => {
  return (
    <div>
      <header>
        <Route path = "/" component={HeaderSelect} />
      </header>
      <section>
        <Switch>
          <AuthRoute exact path="/login" component={LoginFormContainer} />
          <AuthRoute exact path="/signup/user" component={SignupFormContainer} />
          <AuthRoute exact path="/signup/artist" component={ArtistSignupContainer} />
          <AuthRoute exact path="/signup" component={RegistrationSelectContainer} />
        </Switch>
      </section>
    </div>
  );
};

export default App;
