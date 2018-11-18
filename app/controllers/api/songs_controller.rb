class Api::SongsController < ApplicationController

  def show
    @songs = Song.where(album_id: params[:id])
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
