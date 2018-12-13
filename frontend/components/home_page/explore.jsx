import React from 'react';
import { Link } from 'react-router-dom';
import GenreAlbum from './genre_album';

class Explore extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    // const genres = [
    //   ["rock", 196],
    //   ["pop", 197],
    //   ["jazz", 198],
    //   ["electronic", 199],
    //   ["classical", 200],
    //   ["blues", 201],
    //   ["funk", 202]
    // ]
    const genres = ["Rock","Pop","Jazz","Electronic","Classical","Blues","Funk"]

    const randGenre = genres[Math.floor(Math.random() * genres.length)]
    // const genreId = randGenre[1];
    const genreEle = document.getElementById(randGenre);

    genreEle.classList.add("selected-genre");
    this.props.setExploreGenre(randGenre);
    this.props.getGenreAlbums(randGenre);
  }

  selectGenre(genre, e) {
    const selected = e.target;
    const genres = Array.from(document.getElementsByClassName("explore-genre"));
    genres.forEach( genre => genre.classList.remove("selected-genre"));
    selected.classList.add("selected-genre");
    this.props.setExploreGenre(genre);
    this.props.getGenreAlbums(genre);

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
            id="Rock"
            onClick={(e) => this.selectGenre("Rock", e)}
            className="explore-genre">rock</div>
          <div
            id="Pop"
            onClick={(e) => this.selectGenre("Pop", e)}
            className="explore-genre">pop</div>
          <div
            id="Jazz"
            onClick={(e) => this.selectGenre("Jazz", e)}
            className="explore-genre">jazz</div>
          <div
            id="Electronic"
            onClick={(e) => this.selectGenre("Electronic", e)}
            className="explore-genre">electronic</div>
          <div
            id="Classical"
            onClick={(e) => this.selectGenre("Classical", e)}
            className="explore-genre">classical</div>
          <div
            id="Blues"
            onClick={(e) => this.selectGenre("Blues", e)}
            className="explore-genre">blues</div>
          <div
            id="Funk"
            onClick={(e) => this.selectGenre("Funk", e)}
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
