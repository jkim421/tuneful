class Api::UserCollectionAlbumsController < ApplicationController

  def create
    @user = User.find(collection_params[:user_id])
    collection_item = UserCollectionAlbum.new(collection_params)
    if collection_item.save
      render 'api/users/show'
    else
      render json: @collection_item.errors.full_messages, status: 422
    end
  end

  def destroy
    collection_item = UserCollectionAlbum.find_by(
      album_id: collection_params[:album_id],
      user_id: collection_params[:user_id]
    )
    @user = User.find(collection_item.user_id)
    if collection_item
      collection_item.destroy!
      render 'api/users/show'
    else
      render json: ["Invalid album"], status: 422
    end
  end

  private

  def collection_params
    params.require(:data).permit(:album_id, :user_id)
  end

end
