class Api::AlbumCommentsController < ApplicationController

  def create
    @user = User.find(comment_params[:user_id])
    album_comment = AlbumComment.new(comment_params)
    if album_comment.save
      render 'api/albums/show'
    else
      render json: album_comment.errors.full_messages, status: 422
    end
  end

  def update
    @album_comment = AlbumComment.find(comment_params[:id])
    if @album_comment.update(comment_params)
      render 'api/albums/show'
    else
      render json: @album_comment.errors.full_messages, status: 422
    end
  end

  def destroy
    album_comment = AlbumComment.find(comment_params[:id])
    @user = User.find(album_comment.user_id)
    if album_comment
      album_comment.destroy!
      render 'api/albums/show'
    else
      render json: ["Invalid album"], status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :album_id, :body)
  end

end
