json.user do
  json.extract! user, :id, :username
  json.photo_url url_for(user.photo) if user.photo.attached?
  json.user_collection_ids user.user_collection_albums.map{ |album| album.album_id }
  json.user_follow_ids user.user_follows.map{ |follow| follow.artist_id }
  json.artist_id (user.artist ? user.artist.id : nil)
end

if user.artist
  json.artist do
    json.extract! user.artist, :id, :user_id, :name, :location, :bio, :website
    json.photo_url url_for(user.artist.photo) if user.artist.photo.attached?
    json.album_ids user.artist.album_ids
  end
end
