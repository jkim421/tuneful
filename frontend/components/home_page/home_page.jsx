import React from 'react';
import FeaturedAlbumsContainer from './featured_albums_container';

class HomePage extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <>
        <FeaturedAlbumsContainer />
      </>
    );
  }
}

export default HomePage;
