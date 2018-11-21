import React from 'react';

class SongItem extends React.Component {
  constructor(props) {
    super(props);
  }

  songPlayer(song) {
    if (song.audio_url) {
      return (
        <div>aux</div>
      )
    }
  }

  render() {
    const song = this.props.song;
    return (
      <li className="album-track-item">
        {this.songPlayer(song)}
        <span className="album-track-btn">
          <i className="fas fa-play album-track-icon"/>
        </span>
        <span>
          {song.track_num}.&nbsp;
        </span>
        <span>
          {song.title}
        </span>
      </li>
    )
  }

}

export default SongItem
