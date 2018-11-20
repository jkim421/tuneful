json.set! params[:albumId] do
  json.array! @songs do |song|
    json.extract! song, :id, :album_id, :title, :track_num
    json.audio_url url_for(song.audio_file) if song.audio_file.attached?
  end
end
