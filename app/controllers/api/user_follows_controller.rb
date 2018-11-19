class Api::UserFollowsController < ApplicationController

  def create
    @user = User.find(follow_params[:user_id])
    follow_item = UserFollow.new(follow_params)
    if follow_item.save
      render 'api/users/show'
    else
      render json: follow_item.errors.full_messages, status: 422
    end
  end

  def destroy
    follow_item = UserFollow.find_by(
      artist_id: follow_params[:artist_id],
      user_id: follow_params[:user_id]
    )
    @user = User.find(follow_item.user_id)
    if follow_item
      follow_item.destroy!
      render 'api/users/show'
    else
      render json: ["Invalid artist"], status: 422
    end
  end

  private

  def follow_params
    params.require(:data).permit(:artist_id, :user_id)
  end

end
