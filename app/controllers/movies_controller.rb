class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    @vue = Vue.new
  end

  def create
  end

  def index
    @movies = current_user.movies
  end

  def redirect
  end
end
