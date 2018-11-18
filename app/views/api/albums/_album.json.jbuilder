json.extract! album, :id, :title, :artist_id, :description, :featured
json.artist album.artist.name
json.genre album.genre.name
json.song_ids songs.map{ |song| song.id }
