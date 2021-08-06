class MoviesController < ApplicationController

  def index
  @movies = Movie.all
  @movie = @movies.sample
end


def show
  @movie = Movie.find(params[:id])
end

def create
  @movie = Movie.new(movie_params)
  @movie.save
  redirect_to @movie
end

def edit
  @movie = Movie.find(param[:id])
end

def update
    @movie = Movie.find(param[:id])
    if @movie.update(movie_params)
      redirect_to @movie
    else
        render 'edit'
      end
end


private
def movie_params
   params.require(:movie).permit(:title,:image,:release_year,:plot)
 end
end
