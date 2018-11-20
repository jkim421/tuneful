import React from 'react';

class SongPlayer extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    const player = document.getElementById("player");
  }

  renderDuration() {
  }

  render() {
    return (
      <div className="song-player-container">
        <div className="song-player-controls">
          <button className="play-btn">PP</button>
          <div className="progress-bar-container">
            <div className="player-title">Song Title</div>
            <div className="progress-bar-bottom">
              <div className="progress-bar"></div>
              <div className="progress-bar-slider"></div>
              <button className="prev-btn">-1</button>
              <button className="next-btn">+1</button>
            </div>
          </div>
        </div>
      </div>
    )
  }

}

export default SongPlayer;
