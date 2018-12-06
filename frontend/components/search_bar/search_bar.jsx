import React from 'react';
import { Link } from 'react-router-dom';
import SearchItems from './search_items';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      display: "hidden",
      opacity: 1,
      query: "",
      searchTimeout: null,
    }
    this.sendQuery = this.sendQuery.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.clearInput = this.clearInput.bind(this);
    this.handleBlur = this.handleBlur.bind(this);
  }

  handleInput(e) {
    this.setState({query: e.target.value});
    this.sendQuery(e.target.value);
  }

  clearInput(e) {
    this.setState({query: ""});
  }

  handleBlur(e) {
    this.setState({display: "hidden", opacity: 0});
  }

  checkQuery(query) {
    if (query.length > 1) {
      this.props.fetchSearchResults(this.state.query);
      this.setState({display: "visible", opacity: .95});
    } else if (query.length < 2) {
      this.setState({display: "hidden", opacity: 0});
    }
  }

  sendQuery(query) {
    clearTimeout(this.state.searchTimeout);
    const debounced = setTimeout(() => this.checkQuery(query), 500);
    this.setState({searchTimeout: debounced});
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
          onBlur={this.handleBlur}
          onChange={this.handleInput}
          value={this.state.query}/>
        <ul
          className={this.props.listType}
          style={
            {visibility: this.state.display, opacity: this.state.opacity}
            }>
          <SearchItems
            albums={results.albums}
            artists={results.artists}
            clearInput={this.clearInput}
            query={this.state.query}/>
        </ul>
      </div>
    );
  }
}

export default SearchBar;
