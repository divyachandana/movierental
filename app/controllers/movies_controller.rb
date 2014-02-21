class MoviesController < ApplicationController
  
  def index
  @movies = Movie.all
  end
  
  def new
    @movies = Movie.all
  end
  
  def create
    @movie = Movie.new(params[:movie].permit(:moviename, :language,:yor,:typeofmovie))
   
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end
  
  def show
  @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie=Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(params[:movie].permit(:moviename, :language,:yor,:typeofmovie))
      redirect_to @movie
      
    else
      render 'edit'
      movie = Movie.find_or_initialize_by_name(name)
    end
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy 
    redirect_to movies_path
  end
  
 
private
  def movie_params
    params.require(:movie).permit(:moviename, :language,:yor,:typeofmovie)
  end


end
