import React from 'react';
import { isEmpty } from 'lodash';

class SongPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      sliderPos: 0,
      audioLoaded: false }
    this.audio = React.createRef();
    this.progbar = React.createRef();
    this.slider = React.createRef();
    this.handlePlay = this.handlePlay.bind(this);
    this.updatePos = this.updatePos.bind(this);
    this.renderPlaytime = this.renderPlaytime.bind(this);
    this.handleProgClick = this.handleProgClick.bind(this);
    this.handleForward = this.handleForward.bind(this);
    this.handleBackward = this.handleBackward.bind(this);
    this.progInt = () => setInterval(this.updatePos, 200);

    this.audioLoaded = this.audioLoaded.bind(this);
  }

  componentDidMount () {
    if (this.props.isPlaying) {
      this.props.setPlayPause();
    }
  }

  componentDidUpdate(oldProps, oldState) {
    debugger
    if (this.props.songs.length > 0 &&
        _.isEmpty(this.props.currentSong)) {
      const songOne = this.props.songs[0];
      this.props.setCurrentSong(songOne)
    }
    if (this.props.location.pathname !== oldProps.location.pathname) {
      this.props.setCurrentSong({});
    }
    if (this.props.isPlaying) {
      this.audio.current.play();
    } else {
      this.audio.current.pause();
    }
    if (this.props.currentSong !== oldProps.currentSong) {
      this.setState({audioLoaded: false});
    }
  }
  componentWillUnmount() {
    clearInterval(this.intervalId);
    this.props.setCurrentSong({});
  }

  handlePlay() {
    if (this.props.isPlaying) {
      this.props.setPlayPause();
      this.audio.current.pause();
    } else {
      this.props.setPlayPause();
      this.audio.current.play();
      this.intervalId = this.progInt();
    }
  }

  updatePos() {
    if (this.audio.current.currentTime === this.audio.current.duration - 1) {
      clearInterval(this.intervalId);
      this.handleForward();
    }
    const calcWidth =
      this.progbar.current.offsetWidth - (this.slider.current.offsetWidth - 3);
    const progress =
      calcWidth * (this.audio.current.currentTime / this.audio.current.duration);
    const roundedProg = Math.round(progress);
    this.setState({sliderPos: roundedProg})
  }

  renderIcon() {
    if (this.props.isPlaying) {
      return <i className="fas fa-pause playpause-icon"/>
    } else {
      return <i className="fas fa-play playpause-icon"/>
    }
  }

  audioLoaded() {
    this.setState({audioLoaded: true}, () => {
      if (this.props.isPlaying) {
        this.intervalId = this.progInt();
      }
    })
  }

  renderPlaytime() {
    let duration, durationMin, durationSec;
    let currentTime, currentMin, currentSec;
    let renderCurrent, renderDuration;
    if (this.audio.current.src) {
      currentTime = Math.round(this.audio.current.currentTime);
      currentSec = (currentTime % 60);
      currentMin = Math.floor(currentTime/60);

      duration = Math.round(this.audio.current.duration);
      durationSec = (duration % 60);
      durationMin = Math.floor(duration/60);

      if (currentMin < 10) {
        currentMin = `0${currentMin}`
      }
      if (currentSec < 10) {
        currentSec = `0${currentSec}`
      }
      if (durationMin < 10) {
        durationMin = `0${durationMin}`
      }
      if (durationSec < 10) {
        durationSec = `0${durationSec}`
      }

      renderCurrent = `${currentMin}:${currentSec}`
      renderDuration = `${durationMin}:${durationSec}`
    } else {
      renderCurrent = "00:00";
      renderDuration = "00:00";
    }
    return `${renderCurrent} / ${renderDuration}`
  }

  handleProgClick(e) {
    const progbar = this.progbar.current.offsetWidth;
    const container = $('#show-content')
    const offset = container.offset().left;
    const clickX = e.clientX;
    const songPos = clickX - (offset + 93);
    const newTime = this.audio.current.duration * (songPos/progbar);
    if (this.audio.current.ended || this.audio.current.paused) {
      this.handlePlay();
      this.audio.current.currentTime = newTime;
    } else {
      this.audio.current.currentTime = newTime;
    }
  }

  handleForward() {
    if (this.props.currentSong.track_num === this.props.songs.length) {
      debugger
      this.audio.current.pause();
    } else {
      this.props.setCurrentSong(this.props.songs[
        this.props.currentSong.track_num]);
    }
  }

  handleBackward() {
    this.props.setCurrentSong(this.props.songs[
      this.props.currentSong.track_num - 2]);
  }

  render() {
    const backDisabled = (this.props.currentSong.track_num === 1) ? true : false;
    const frwdDisabled = (this.props.currentSong.track_num === (this.props.songs.length)) ? true : false;
    return (
      <div className="song-player-container">
        <audio
          id="audio-player"
          ref={this.audio}
          src={this.props.currentSong.audio_url}
          onLoadedMetadata={this.audioLoaded}
          type="audio/ogg"/>
        <div className="song-player-controls">
          <button
            className="playpause-btn"
            onClick={this.handlePlay}>
            {this.renderIcon()}
          </button>
          <div className="progress-bar-container">
            <div className="player-details">
              <span className="song-player-title">
                {this.props.currentSong.title || ""}
              </span>
              <span className="song-player-time">
                {this.state.audioLoaded ? this.renderPlaytime() : "Loading"}
              </span>
            </div>
            <div className="progress-bar-bottom">
              <div
                className="progress-bar"
                onClick={this.handleProgClick}
                ref={this.progbar}/>
              <div
                className="progress-bar-slider"
                ref={this.slider}
                style={{left: this.state.sliderPos || 0}}/>
              <button
                className="prev-btn"
                onClick={this.handleBackward}
                disabled={ backDisabled }>
                <i className="fas fa-fast-backward prev-btn"/>
              </button>
              <button
                className="next-btn"
                onClick={this.handleForward}
                disabled={ frwdDisabled }>
                <i className="fas fa-fast-forward next-btn"/>
              </button>
            </div>
          </div>
        </div>
      </div>
    )
  }

}

export default SongPlayer;
