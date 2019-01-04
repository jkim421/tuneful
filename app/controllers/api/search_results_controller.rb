class Api::SearchResultsController < ApplicationController

  def index
    if !!params[:query]
      query = params[:query].downcase
      @albums_ex = Album.where("lower(title) LIKE ?", "#{query}%").includes(:artist)
      @albums_par = Album.where("lower(title) LIKE ? AND
        lower(title) NOT LIKE ?", "%#{query}%", "#{query}%").includes(:artist)
      @artists_ex = Artist.where("lower(name) LIKE ?", "#{query}%")
      @artists_par = Artist.where("lower(name) LIKE ? AND
        lower(name) NOT LIKE ?", "%#{query}%", "#{query}%")
      render "api/search_results/index.json.jbuilder"
    else
      render json: ["Invalid search"], status: 422
    end
  end

end
