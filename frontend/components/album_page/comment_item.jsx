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
      </div>
    );
  }
}

export default CommentItem;
