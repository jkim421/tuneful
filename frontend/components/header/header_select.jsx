import React from 'react';
import { Route, Switch } from 'react-router-dom';
import MainHeaderContainer from './main_header_container';
import ThinHeaderContainer from './thin_header_container';

const HeaderSelect = () => {
  return (
    <Switch>
      <Route exact path="/" component={MainHeaderContainer} />
      <Route path="/" component={ThinHeaderContainer} />
    </Switch>
  )
};

export default HeaderSelect;
