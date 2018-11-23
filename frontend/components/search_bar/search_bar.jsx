import React from 'react';
import { Link } from 'react-router-dom';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      display: "hidden",
      opacity: 1
    }
    this.defineQuery = this.defineQuery.bind(this);
    this.inputField = React.createRef();
  }

  clearInput(e) {
    this.inputField.value = "";
  }

  defineQuery(e) {
    let query = e.target.value;
    if (query.length > 1) {
      this.props.fetchSearchResults(query);
      this.setState({display: "visible", opacity: 1})
    } else if (query.length < 2) {
      this.setState({display: "hidden", opacity: 0})
    }
  }

  searchList() {
    const results = this.props.searchResults;
    if (results.albums.length > 0 || results.artists.length > 0) {
      const albumResults = results.albums.map( album => {
        return (
          <li
            key={album.id}
            className="search-result-item">
            <Link
              to={`/albums/${album.id}`}
              className="search-item-link"
              onClick={this.clearInput}>
              <p className="search-item-name">{album.title}</p>
              <p className="search-item-by">by {album.artist}</p>
            </Link>
            <p className="search-item-type">ALBUM</p>
          </li>
        )
      });
      const artistResults = results.artists.map( artist => {
        return (
          <li
            key={artist.id}
            className="search-result-item">
            <Link
              to={`/artists/${artist.id}`}
              className="search-item-link"
              onClick={this.clearInput}>
              <p className="search-item-name">{artist.name}</p>
            </Link>
            <p className="search-item-type">ARTIST</p>
          </li>
        )
      });
      return albumResults.concat(artistResults);
    } else {
      return null;
    }
  }

  render() {
    const results = this.props.searchResults;
    const display = (results.albums.length > 0 || results.artists.length > 0) ? "visible" : "hidden"
    return (
      <div className="search-container">
        <input
          type="text"
          className={this.props.inputType}
          placeholder={this.props.placeholderText}
          ref={this.inputField}
          onChange={this.defineQuery}/>
        <ul
          className={this.props.listType}
          style={
            {visibility: this.state.display, opacity: this.state.opacity}
            }>
          {this.searchList()}
        </ul>
      </div>
    );
  }
}

export default SearchBar;
