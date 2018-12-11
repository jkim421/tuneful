import React from 'react';

class SongItem extends React.Component {
  constructor(props) {
    super(props);
    this.changeSong = this.changeSong.bind(this);
    this.renderIcon = this.renderIcon.bind(this);
  }

  renderIcon() {
    if (this.props.isPlaying && this.props.currentSong.id === this.props.song.id) {
      return <i className="fas fa-pause playpause-list-icon"/>
    } else {
      return <i className="fas fa-play playpause-list-icon"/>
    }
  }

  componentDidUpdate(oldProps) {
    if (!_.isEmpty(oldProps.currentSong) &&
        (this.props.currentSong.id !== oldProps.currentSong.id) &&
        !this.props.isPlaying) {
      this.props.setPlayPause();
    }
  }

  changeSong() {
    debugger
    this.props.setCurrentSong(this.props.song);
  }

  render() {
    const song = this.props.song;
    return (
      <li className="album-track-item">
        <div className="album-track-left">
          <span
            className="album-track-btn"
            onClick={ this.changeSong }>
            {this.renderIcon()}
          </span>
          <span>
            {song.track_num}.&nbsp;
          </span>
          <span>
            {song.title}
          </span>
        </div>
        <div className="album-track-left">
          <a
            className="album-track-dl"
            href={this.props.song.audio_url}
            download="test">
            download song</a>
        </div>
      </li>
    )
  }

}

export default SongItem
