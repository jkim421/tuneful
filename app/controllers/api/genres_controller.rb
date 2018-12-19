class Api::GenresController < ApplicationController

  def index
    @genres = Genre.all
    render "api/genres/index.json.jbuilder"
  end

end
