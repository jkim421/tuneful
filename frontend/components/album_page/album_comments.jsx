import React from 'react';
import CommentItemContainer from './comment_item_container';

class AlbumComments extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      commenting: false,
    }
    this.handleInput = this.handleInput.bind(this);
    this.startComment = this.startComment.bind(this);
    this.cancelComment = this.cancelComment.bind(this);
    this.submitComment = this.submitComment.bind(this);
  }

  handleInput(e) {
    this.setState({body: e.target.value});
  }

  renderComments() {
    const comments = this.props.albumComments;
    const users = this.props.users;
    return comments.map( comment =>
      <CommentItemContainer
        key={comment.id}
        comment={comment}
        user={users[comment.user_id]} />
    )
  }

  displayCommentSection() {
    if (this.props.loggedIn) {
      return "album-comments-input";
    } else {
      return "album-comments-input album-comments-hidden"
    }
  }

  displayCommentBtns() {
    if (this.props.loggedIn && this.state.commenting) {
      return "album-comments-btn";
    } else {
      return "album-comments-btn album-comments-hidden";
    }
  }

  displayCommentField() {
    if (this.state.commenting) {
      return "album-comments-text album-comments-active";
    } else {
      return "album-comments-text"
    }
  }

  startComment() {
    this.setState({
      commenting: true,
    });
  }

  cancelComment() {
    this.setState({
      body: "",
      commenting: false,
    })
  }

  submitComment() {
    const comment = {
      user_id: this.props.currentUser,
      album_id: parseInt(this.props.albumId),
      body: this.state.body,
    };

    this.props.createComment(comment).then(this.cancelComment());
  }

  render() {
    const { comment, user } = this.props;
    return (
      <>
        <div className={this.displayCommentSection()}>
          <textarea
            className={this.displayCommentField()}
            placeholder="post comment"
            onChange={this.handleInput}
            onClick={this.startComment}
            value={this.state.body}
          />
          <div className="album-comments-btns">
            <button
              className={`album-comments-cancel ${this.displayCommentBtns()}`}
              onClick={this.cancelComment}
            >
              cancel
            </button>
            <button
              className={`album-comments-submit ${this.displayCommentBtns()}`}
              onClick={this.submitComment}
            >
              submit
            </button>
          </div>
        </div>
        <div className="album-comments-list">
          { this.renderComments() }
        </div>
      </>
    );
  }
}

export default AlbumComments;
