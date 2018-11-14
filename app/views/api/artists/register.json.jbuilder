json.set! :artist do
  json.extract! @artist, :id, :user_id, :name
end

json.set! :user do
  json.extract! @user, :id, :username
end
