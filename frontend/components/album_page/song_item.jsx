import React from 'react';

class SongItem extends React.Component {
  constructor(props) {
    super(props);
  }

  songPlayer(song) {
    if (song.audio_url) {
      debugger
      return (
        <audio controls>
          <source src={song.audio_url} type="audio/ogg"/>
        </audio>
      )
    }
  }

  render() {
    const song = this.props.song;
    debugger
    return (
      <li className="album-track-item">
        {this.songPlayer(song)}
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
