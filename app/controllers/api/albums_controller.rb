class Api::AlbumsController < ApplicationController

  def index
    debugger
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

  private

  def album_params
    params.require(:album).permit(
      :artist_id,
      :title,
      :genre_id,
      :release_date,
      :descrpition,
      :cover_url,
      :downloadable,
      :featured)
  end

  def filter
    return params[:filter]
  end

end
