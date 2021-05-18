class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy title_edit title_update year_edit year_update director_edit director_update description_edit description_update]

  # GET /movies or /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1 or /movies/1.json
  def show
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /movies/1/title/edit
  def title_edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def year_edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def director_edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def description_edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  # POST /movies or /movies.json
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/title/1 or /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /movies/1/title
  def title_update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /movies/1/year
  def year_update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def director_update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def description_update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to root_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /movies/1 or /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:title, :description, :duration, :image, :year, :director_id)
    end
end
