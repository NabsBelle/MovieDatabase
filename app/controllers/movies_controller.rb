class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  def index
  @movies = Movie.all

end

def new
  @movie = Movie.new
end

def show
end

def create
  @movie = Movie.new(movie_params)
  if @movie.save
     redirect_to root_path
  else
     render 'new'
   end
end

def edit
end

def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
        render 'edit'
      end
end

def destroy
  @movie = Movie.find(params[:id])
  @movie.destroy

  redirect_to movies_path
end

private
 def movie_params
   params.require(:movie).permit(:name,:picture,:release_date,:description,:rating)
 end

 def find_movie
   @movie = Movie.find(params[:id])
 end

 end
