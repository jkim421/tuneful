class Api::ArtistsController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      @artist = Artist.new(artist_params)
      @artist.user_id = @user.id
      if @artist.save
        render 'api/artists/register'
      else
        to_delete = User.last
        to_delete.destroy
        render json: @artist.errors.full_messages, status: 422
      end

    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def update
  end

  def index
    if !!params[:userFollowIds]
      @artists = Artist.where(id: params[:userFollowIds]).includes(:albums)
    else
      @artists = Artist.all
    end

    render 'api/artists/index.json.jbuilder'
  end

  def show
    @artist = Artist.includes(:albums).find(params[:id])
    if @artist
      render 'api/artists/show.json.jbuilder'
    else
      render json: ["Couldn't find artist"], status: 404
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:user_id, :name, :bio, :location, :picture_url)
  end

  def user_params
    params.require(:artist).permit(:username, :password, :email)
  end

end
