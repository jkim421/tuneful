import React from 'react';
import { Link, Route, Switch } from 'react-router-dom';
import SignupFormContainer from './session_form/signup_form_container';
import LoginFormContainer from './session_form/login_form_container';

const App = () => {
  return (
    <div>
      <header>
        <h1>Welcome to tunesmith</h1>
        <Link to="/login" className="header-link">Log In</Link>
        <Link to="/signup" className="header-link">Sign Up</Link>
        <button></button>
      </header>
      <section>
        <Switch>
          <Route exact path="/login" component={LoginFormContainer} />
          <Route exact path="/signup" component={SignupFormContainer} />
        </Switch>
      </section>
    </div>
  );
};

export default App;
