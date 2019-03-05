import React from 'react';
import CommentItemContainer from './comment_item_container';

class AlbumComments extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      commenting: false,
      currentPage: 1,
      perPage: 5,
      pageComments: [],
      maxLength: "350",
    }
    this.handleInput = this.handleInput.bind(this);
    this.startComment = this.startComment.bind(this);
    this.cancelComment = this.cancelComment.bind(this);
    this.submitComment = this.submitComment.bind(this);
  }

  componentDidMount() {
    this.setPageComments();
  }

  componentDidUpdate(oldProps) {
    if (this.props.albumComments.length !== oldProps.albumComments.length) {
      this.setPageComments();
    }
  }

  handleInput(e) {
    this.setState({body: e.target.value});
  }

  setPageComments() {
    const { currentPage, perPage } = this.state;
    const pageComments = this.props.albumComments.slice(
      ((currentPage-1) * perPage), ((currentPage) * perPage)
    )
    this.setState({pageComments});
  }

  renderComments() {
    const comments = this.state.pageComments;
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

  displayCharCount() {
    if (this.props.loggedIn && this.state.commenting) {
      return "album-comments-charcount";
    } else {
      return "album-comments-charcount album-comments-hidden";
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
    if (!this.props.loggedIn) {
      this.props.openModal();
    } else {
      this.setState({
        commenting: true,
      });
    }
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

  activePageBtn(limit) {
    const count = this.props.albumComments.length;
    const { currentPage, perPage } = this.state;
    const maxPage = Math.ceil(count / perPage);
    if (limit === "min" && currentPage === 1) {
      return "album-comments-pagebtn album-comments-page-disable";
    } else if (limit === "max" && currentPage === maxPage) {
      return "album-comments-pagebtn album-comments-page-disable";
    } else {
      return "album-comments-pagebtn";
    }
  }

  setPage(diff) {
    const count = this.props.albumComments.length;
    const { currentPage, perPage } = this.state;
    const maxPage = Math.ceil(count / perPage);
    if ((diff === -1 && currentPage !== 1) || (diff === 1 && currentPage !== maxPage)) {
      this.setState({
        currentPage: currentPage + diff
      }, () => this.setPageComments())
    }
  }

  render() {
    return (
      <>
        <div className="album-comments-input">
          <textarea
            className={this.displayCommentField()}
            placeholder="post comment"
            maxlength={this.state.maxLength}
            onChange={this.handleInput}
            onClick={this.startComment}
            value={this.state.body}
          />
          <div className="album-comments-entry">
            <div className={`${this.displayCharCount()}`}>
              { this.state.maxLength - this.state.body.length } characters
            </div>
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
        </div>
        <div className="album-comments-content">
          <div className="album-comments-list">
            { this.renderComments() }
          </div>
          <div className="album-comments-pages">
            <div className="album-comments-pagenav">
              <i
                className={`fas fa-caret-left ${this.activePageBtn("min")}`}
                onClick={ () => this.setPage(-1) }
                />
              <i
                className={`fas fa-caret-right ${this.activePageBtn("max")}`}
                onClick={ () => this.setPage(1) }
                />
            </div>
          </div>
        </div>
      </>
    );
  }
}

export default AlbumComments;
