class Api::AlbumsController < ApplicationController

  def index
    debugger
    if selection_filter == "features"
      @albums = Album.where(featured: true)
    elsif selection_filter = "newnotable"
      @albums = Album.limit(2).order('created_at DESC')
    else
      @albums = Album.all
    end

    render index

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

  def selection_filter
    return params[:selection_filter]
  end

end
