class Api::ArtistsController < ApplicationController

  def create
    @user = User.new(...)
    if @user.save
      @artist = Artist.new(artist_params)

      if @artist.save
        render 'api/artists/show'
      else
        to_delete = User.last
        User.delete!
        render json: @artist.errors.full_messages, status: 422
      end

    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def update
  end

  def show
    @artist = Artist.find(params[:id])
    render 'api/artists/show'
  end

  private

  def artist_params
    params.require(:artist).permit(:user_id, :name, :bio, :location, :picture_url)
  end

end
