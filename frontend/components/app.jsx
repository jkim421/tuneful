import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import { AuthRoute } from '../util/route_util'
import SignupFormContainer from './session_form/signup_form_container';
import LoginFormContainer from './session_form/login_form_container';
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
          <AuthRoute exact path="/signup" component={SignupFormContainer} />
        </Switch>
      </section>
    </div>
  );
};

export default App;
