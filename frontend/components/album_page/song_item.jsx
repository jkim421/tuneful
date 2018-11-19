import React from 'react';

class SongItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <li className="album-track-item">
        <span>
          {this.props.song.track_num}.&nbsp;
        </span>
        <span>
          {this.props.song.title}
        </span>
      </li>
    )
  }

}

export default SongItem
