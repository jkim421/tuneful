class Api::SearchResultsController < ApplicationController

  def index
    if !!params[:query]
      query = params[:query].downcase
      @albums = Album.where("lower(title) LIKE ?", "%#{query}%").includes(:artist)
      @artists = Artist.where("lower(name) LIKE ?", "%#{query}%")
      render "api/search_results/index.json.jbuilder"
    else
      render json: ["Invalid search"], status: 422
    end
  end

end
