import React from 'react';

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
    }
  }

  handleInput(e) {
    this.setState({body: e.target.value});
  }

  displayDelete() {
    if (this.props.currentUser) {
      return "comment-item-delete"
    } else {
      return "comment-item-delete album-comments-hidden"
    }
  }

  render() {
    const { comment, user } = this.props;
    return (
      <div className="comment-item">
        <div className="comment-content">
          <span className="comment-username">
            { user.username }
          </span>
          <span className="comment-body">
            { comment.body }
          </span>
        </div>
        <div>
          <div
            className={this.displayDelete()}
            onClick={() => this.props.deleteComment(comment.id)}
          >
            delete
          </div>
        </div>
      </div>
    );
  }
}

export default CommentItem;
