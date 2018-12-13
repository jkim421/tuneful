import React from 'react';
import FeaturedAlbumsContainer from './featured_albums_container';
import NewAlbumsContainer from './new_albums_container';
import ExploreContainer from './explore_container';

class HomePage extends React.Component {

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <section className="home-page">
        <FeaturedAlbumsContainer />
        <div className="home-page-separator"></div>
        <NewAlbumsContainer />
        <div className="home-page-separator"></div>
        <ExploreContainer />
      </section>
    );
  }
}

export default HomePage;
