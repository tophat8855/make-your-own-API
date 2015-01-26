class MoviesController < ActionController::Base
  def all
    @movies = Movie.all
    render json: @movies
  end
end
