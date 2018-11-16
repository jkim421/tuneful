import React from 'react';
import FeaturedAlbumsContainer from './featured_albums_container';

class HomePage extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <section className="home-page">
        <FeaturedAlbumsContainer />
      </section>
    );
  }
}

export default HomePage;
