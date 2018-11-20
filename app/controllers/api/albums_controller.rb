class Api::AlbumsController < ApplicationController

  def index
    if filter == "features"
      @albums = Album.where(featured: true)
    elsif filter == "new"
      @albums = Album.limit(5).order('created_at DESC')
    elsif !!params[:artistId]
      @albums = Album.where(artist_id: params[:artistId].to_i)
    elsif !!params[:userCollectionIds]
      @albums = Album.where(id: params[:userCollectionIds])
    else
      @albums = Album.all
    end

    render "api/albums/index.json.jbuilder"
  end

  def show
    @album = Album.find(params[:id])
    @artist = @album.artist
    @songs = Song.where(album_id: params[:id])
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
