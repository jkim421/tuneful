class Api::UserCollectionAlbumsController < ApplicationController

  def create
    @collection_album = UserCollectionAlbum.new(collection_params)
    if @collection_album.save
      render 'api/user_collection_albums/show'
    else
      render json: @collection_album.errors.full_messages, status: 422
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    collection_album = UserCollectionAlbum.find(params[:album_id])
    if collection_album
      collection_album.destroy!
      render 'api/user/show'
    else
      render json: ["Invalid album"]
    end
  end

  private

  def collection_params
    params.require(:data).permit(:album_id, :user_id)
  end

end
