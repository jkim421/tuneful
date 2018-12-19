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
    songHash = JSON.parse(params["album"]["songs"])
    files = params["album"]["songFiles"]
    debugger
    @album = Album.new(album_params)
    if @album.save!
      @songs = [];
      songHash.keys.each_with_index do |key, idx|
        song = Song.new(
          album_id: @album.id,
          title: songHash[key]["title"],
          track_num: songHash[key]["trackNum"].to_i,
          )
        debugger
        song.audio_file.attach(io: files[idx].tempfile, filename: files[idx].original_filename)
        @songs.push(song)
      end
      debugger
      @songs.each do |song|
        unless song.save!
          album = Album.last
          album.destroy!
          render json: ["Errors"], status: 422
        end
      end
      debugger
    else
      return "bee"
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

end
