class MoviesController < ActionController::Base
  def all
    @movies = Movie.all
    render json: @movies
  end

  def search
    @movies = Movie.find(params[])
    render json: @movies
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :plot, :image_url)
  end
end
