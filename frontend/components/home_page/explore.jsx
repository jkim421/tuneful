import React from 'react';
import { Link } from 'react-router-dom';
import GenreAlbum from './genre_album';

class Explore extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    const genres = [
      ["rock", 196],
      ["pop", 197],
      ["jazz", 198],
      ["electronic", 199],
      ["classical", 200],
      ["blues", 201],
      ["funk", 202]
    ]

    const randGenre = genres[Math.floor(Math.random() * genres.length)]
    const genreId = randGenre[1];
    const genreEle = document.getElementById(randGenre[0]);

    genreEle.classList.add("selected-genre");
    this.props.setExploreGenre(genreId);
    this.props.getGenreAlbums(genreId);
  }

  selectGenre(genreId, e) {
    const selected = e.target;
    const genres = Array.from(document.getElementsByClassName("explore-genre"));
    genres.forEach( genre => genre.classList.remove("selected-genre"));
    selected.classList.add("selected-genre");
    this.props.setExploreGenre(genreId);
    this.props.getGenreAlbums(genreId);

  }

  toggleSelection() {

  }

  renderGenre() {
    const genreAlbums = this.props.genreAlbums.map( album => {
      return (
        <GenreAlbum album={album} key={album.id}/>
      )
    })
    return genreAlbums;
  }

  render() {
    return (
      <section id="explore" className="explore-container">
        <div className="home-separator-text">EXPLORE</div>
        <div className="explore-genres">
          <div
            id="rock"
            onClick={(e) => this.selectGenre(196, e)}
            className="explore-genre">rock</div>
          <div
            id="pop"
            onClick={(e) => this.selectGenre(197, e)}
            className="explore-genre">pop</div>
          <div
            id="jazz"
            onClick={(e) => this.selectGenre(198, e)}
            className="explore-genre">jazz</div>
          <div
            id="electronic"
            onClick={(e) => this.selectGenre(199, e)}
            className="explore-genre">electronic</div>
          <div
            id="classical"
            onClick={(e) => this.selectGenre(200, e)}
            className="explore-genre">classical</div>
          <div
            id="blues"
            onClick={(e) => this.selectGenre(201, e)}
            className="explore-genre">blues</div>
          <div
            id="funk"
            onClick={(e) => this.selectGenre(202, e)}
            className="explore-genre">funk</div>
        </div>
        <div className="explore-results">
          <ul className="user-page-discog">
            {this.renderGenre()}
          </ul>
        </div>
      </section>
    );
  }
}

export default Explore;
