class Api::SongsController < ApplicationController

  def index
    @songs = Song.where(album_id: params[:albumId])
    render "api/songs/index.json.jbuilder"
  end

  def show
    @song = Song.find(params[:id])
    render "api/songs/show.json.jbuilder"
  end

  private

  def album_params
    params.require(:song).permit(
      :album_id,
      :title,
      :track_num,
      :stream_url)
  end

end
