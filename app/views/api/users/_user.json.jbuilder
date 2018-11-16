json.extract! user, :id, :username
json.user_follow_ids user.user_follows.map{ |follow| follow.artist_id }
json.user_collection_ids user.user_collection_albums.map{ |album| album.album_id }
json.artist_id user.artist.id if user.artist
