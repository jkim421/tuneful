import React from 'react';

class AlbumComment extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
    }
  }

  handleInput(e) {
    this.setState({body: e.target.value});
  }

  render() {
    return (
      <div className="comment-container">
        <div className="comment-username">
          { user.username }
        </div>
        <div className="comment-body">
          { comment.body }
        </div>
      </div>
    );
  }
}

export default AlbumComment;
