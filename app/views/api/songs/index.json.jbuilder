json.set! params[:albumId] do
  json.array! @songs, :id, :album_id, :title, :track_num, :stream_url
end
