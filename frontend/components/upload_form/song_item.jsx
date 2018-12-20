import React from 'react';
import { Link } from 'react-router-dom';

const SongItem = ({ idx, song, updateSong, handleFile, removeSong }) => {
  return (
    <div className="new-album-song" key={idx}>
      <label htmlFor={`song-title-${idx}`}>Title</label>
      <input
        type="text"
        id={`song-title-${idx}`}
        value={song.title}
        className="input-field song-title-input"
        onChange={(e) => updateSong(e, idx, "title")} />
      <label htmlFor={`song-tracknum-${idx}`}>Track #</label>
      <input
        type="text"
        id={`song-tracknum-${idx}`}
        value={song.trackNum}
        className="input-field tracknum-input"
        onChange={(e) => updateSong(e, idx, "trackNum")} />
      <label htmlFor={`song-file-${idx}`}>File
      <input
        type="file"
        accept="audio/*"
        id={`song-file-${idx}`}
        className="input-field album-file-input"
        onChange={(e) => handleFile(e, idx)} />
      </label>
      <div
        className="remove-song-btn"
        onClick={() => removeSong(idx, song.trackNum)}>x</div>
    </div>
  )
}

export default SongItem;
