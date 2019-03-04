import React from 'react';
import { Link } from 'react-router-dom';

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      edit: false,
    }
    this.deleteComment = this.deleteComment.bind(this);
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

  deleteComment() {
    this.props.deleteComment(this.props.comment.id);
  }

  render() {
    const { comment, user } = this.props;
    return (
      <div className="comment-item">
        <div className="comment-content">
          <Link
            to={`/users/${user.id}/`}
            className="comment-username"
          >
            { user.username }
          </Link>
          <span className="comment-body">
            { comment.body }
          </span>
        </div>
        <div
          className={ this.displayDelete() }
          onClick={ this.deleteComment }
        >
          delete
        </div>
      </div>
    );
  }
}

export default CommentItem;
