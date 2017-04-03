class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to movies_path
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.update(movie_params)

    redirect_to movies_path, notice: "更新成功，真的！"
  end

  def destroy

    @movie = Movie.find(params[:id])
    @movie.destroy

    flash[:alert] = "Movie Delete"
    redirect_to movies_path
  end
  


  private

  def movie_params
    params.require(:movie).permit(:title)
  end


end
