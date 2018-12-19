@genres.each do |genre|
  json.set! genre.id, genre.name
end
