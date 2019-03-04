class Api::AlbumCommentsController < ApplicationController

  def show
    @comment = AlbumComment.find(params[:id])
    @album = Album.find(@comment.album_id)
    if @album
      render 'api/album_comments/show.json.jbuilder'
    else
      render json: ["Invalid album"], status: 422
    end
  end

  def create
    album_comment = AlbumComment.new(comment_params)
    if album_comment.save
      @album = Album.find(comment_params[:album_id])
      render 'api/album_comments/show.json.jbuilder'
    else
      render json: album_comment.errors.full_messages, status: 422
    end
  end

  def update
    @album_comment = AlbumComment.find(comment_params[:id])
    if @album_comment.update(comment_params)
      render 'api/albums/show.json.jbuilder'
    else
      render json: @album_comment.errors.full_messages, status: 422
    end
  end

  def destroy
    album_comment = AlbumComment.find(comment_params[:id])
    @user = User.find(album_comment.user_id)
    if album_comment
      album_comment.destroy!
      render 'api/album_comments/show'
    else
      render json: ["Invalid album"], status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :album_id, :body)
  end

end
