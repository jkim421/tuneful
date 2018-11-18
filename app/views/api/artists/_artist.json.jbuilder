json.extract! artist, :id, :user_id, :name, :bio, :location, :picture_url
json.album_ids albums.map{ |album| album.id }
