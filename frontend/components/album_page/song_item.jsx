import React from 'react';

class SongItem extends React.Component {
  constructor(props) {
    super(props);
    this.changeSong = this.changeSong.bind(this);
  }

  songPlayer(song) {
    if (song.audio_url) {
      return (
        <div>aux</div>
      )
    }
  }


  renderIcon() {
    if (this.state.isPlaying) {
      return <i className="fas fa-pause playpause-icon"/>
    } else {
      return <i className="fas fa-play playpause-icon"/>
    }
  }

  changeSong() {
    this.props.setCurrentSong(this.props.song);
  }

  render() {
    const song = this.props.song;
    return (
      <li className="album-track-item">
        {this.songPlayer(song)}
        <span
          className="album-track-btn"
          onClick={ this.changeSong }>
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
