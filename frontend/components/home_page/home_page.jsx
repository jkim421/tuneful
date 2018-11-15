import React from 'react';
import FeaturedAlbumsContainer from './featured_albums_container';

class HomePage extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <>
        <h1>Hello from the home page dummy</h1>
        <FeaturedAlbumsContainer />
      </>
    );
  }
}

export default HomePage;
