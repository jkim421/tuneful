import React from 'react';
import { Link } from 'react-router-dom';
import GenreAlbum from './genre_album';
import ExploreResults from './explore_results.jsx';
import PageNum from './page_nums';

class Explore extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      currentPage: 1,
      pageAlbums: [],
    }
    this.switchPage = this.switchPage.bind(this);
    this.setPageAlbums = this.setPageAlbums.bind(this);
  }

  componentDidMount() {
    const genres = ["Rock","Pop","Jazz","Electronic","Classical","Blues","Funk"]

    const randGenre = genres[Math.floor(Math.random() * genres.length)]
    const genreEle = document.getElementById(randGenre);

    genreEle.classList.add("selected-genre");
    this.props.setExploreGenre(randGenre);
    this.props.getGenreAlbums(randGenre).then( res => this.setPageAlbums());
  }

  setPageAlbums() {
    debugger
    const currentPage = this.state.currentPage;
    const pageAlbums = this.props.genreAlbums.slice(
      ((currentPage-1) * 4), ((currentPage) * 4)
    )
    debugger
    this.setState({pageAlbums: pageAlbums});
  }

  selectGenre(genre, e) {
    const selected = e.target;
    const genres = Array.from(document.getElementsByClassName("explore-genre"));
    genres.forEach( genre => genre.classList.remove("selected-genre"));
    selected.classList.add("selected-genre");
    this.setState({currentPage: 1});
    this.props.setExploreGenre(genre);
    this.props.getGenreAlbums(genre).then( res => this.setPageAlbums());
  }


  switchPage(e) {
    const pageNums = Array.from(document.getElementsByClassName("explore-page-num"));
    pageNums.forEach( num => num.classList.remove("current-page-num"));
    e.target.classList.add("current-page-num");
    debugger
    this.setState(
      {currentPage: parseInt(e.target.innerHTML)}, this.setPageAlbums);
  }

  pageDisplay() {
    const numPages = Math.ceil(this.props.genreAlbums.length / 4);
    const pageEles = [];
    const pageList = document.getElementById("page-list");
    for (let i = 1; i <= numPages; i++) {
      pageEles.push(
        <PageNum
          onClick={this.switchPage}
          currentPage={this.state.currentPage}
          key={i}
          num={i}/>
      );
    }
    return pageEles;
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
    debugger
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
          <ExploreResults albums={this.state.pageAlbums}/>
        </div>
        <div className="explore-pages">
          <div id="page-list" className="page-list">
            <span>Page</span>
            {this.pageDisplay()}
          </div>
        </div>
      </section>
    );
  }
}

export default Explore;
