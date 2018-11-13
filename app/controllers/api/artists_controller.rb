class Api::UsersController < ApplicationController

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      render 'api/artists/show'
    else
      render json: @users.errors.full_messages, status: 422
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:user_id, :name, :bio, :location, :picture_url)
  end

end
