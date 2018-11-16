class Api::AlbumsController < ApplicationController

  def index
    if filter == "features"
      @albums = Album.where(featured: true)
    elsif filter == "new"
      @albums = Album.limit(5).order('created_at DESC')
    else
      @albums = Album.all
    end

    render :index

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
