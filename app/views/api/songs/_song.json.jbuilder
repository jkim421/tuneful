json.extract! song, :id, :album_id, :title, :track_num
json.audio_url url_for(song.audio_file) if song.audio_file.attached?
