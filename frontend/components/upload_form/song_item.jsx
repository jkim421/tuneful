import React from 'react';
import { Link } from 'react-router-dom';

const SongItem = ({ num, last, trackNum, updateSong, handleFile, removeSong }) => {
  debugger
  return (
    <div className="new-album-song" key={num}>
      <label htmlFor={`song-title-${num}`}>Title</label>
      <input
        type="text"
        id={`song-title-${num}`}
        data-num={num}
        className="input-field song-title-input"
        onChange={updateSong(num, "title")} />
      <label htmlFor={`song-tracknum-${num}`}>Track #</label>
      <input
        type="text"
        id={`song-tracknum-${num}`}
        className="input-field tracknum-input"
        onChange={updateSong(num, "trackNum")}
        value={trackNum} />
      <label htmlFor={`song-file-${num}`}>File
      <input
        type="file"
        accept="audio/*"
        id={`song-file-${num}`}
        className="input-field album-file-input"
        onChange={handleFile(num)} />
      </label>
      {last ? <div
        className="remove-song-btn"
        onClick={removeSong}>x</div> : ""}
    </div>
  )
}

export default SongItem;
