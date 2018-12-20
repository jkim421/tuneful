require 'json'

class Api::AlbumsController < ApplicationController

  def index
    if filter == "features"
      @albums = Album.where(featured: true).includes(:artist)
    elsif filter == "new"
      @albums = Album.limit(5).order('created_at DESC').includes(:artist)
    elsif filter && filter[:genre]
      genre = Genre.find_by(name: filter[:genre])
      genre_id = genre.id
      @albums = Album.where(genre_id: genre_id)
        .order('created_at DESC')
        .includes(:artist)
    elsif !!params[:artistId]
      @albums = Album.where(artist_id: params[:artistId].to_i)
        .order('created_at DESC')
        .includes(:songs)
        .includes(:artist)
    elsif !!params[:userCollectionIds]
      @albums = Album.where(id: params[:userCollectionIds])
        .includes(:songs)
        .includes(:artist)
    else
      @albums = Album.all
    end

    render "api/albums/index.json.jbuilder"
  end

  def show
    @album = Album.includes(:songs).includes(:artist).find(params[:id])
    if @album
      render "api/albums/show.json.jbuilder"
    else
      render json: ["Invalid album"], status: 422
    end
  end

  def create
    songsHash = JSON.parse(params["album"]["songs"])
    files = params["album"]["song_files"]
    cover = params["album"]["photo"]

    @album = Album.new(album_params)

    unless @album.valid?
      render json: @album.errors.full_messages, status: 422
    end
    @album.photo.attach(io: cover.tempfile, filename: cover.original_filename)
    @album.save!
    album_id = Album.last.id

    valid = true
    song_errors = []

    songs = create_songs(songsHash, files, album_id)
    
    songs.each do |song|
      unless song.valid?
        song_errors << song.errors.full_messages
        valid = false
      end
    end

    if valid
      songs.each { |song| song.save! }
      render "api/albums/show.json.jbuilder"
    else
      album = Album.last
      album.destroy!
      render json: song_errors, status: 422
    end
  end

  private

  def album_params
    params.require(:album).permit(
      :artist_id,
      :title,
      :description,
      :genre_id,
      :release_date,
      :cover_url,
      :downloadable,
      :featured)
  end

  def filter
    return params[:filter]
  end

  def create_songs(songsHash, files, album_id)
    songs = [];
    songsHash.keys.each_with_index do |key, idx|
      song = Song.new(
        album_id: album_id,
        title: songsHash[key]["title"],
        track_num: songsHash[key]["trackNum"].to_i,
        )
      song.audio_file.attach(io: files[idx].tempfile, filename: files[idx].original_filename)
      songs.push(song)
    end
    return songs
  end

end
