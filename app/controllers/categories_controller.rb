class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  # shows nested places
  def index
    @categories = Category.all

    # @category = Category.find(params[:id]).places


    #insert randomizer to return 3 places based on category e.g. "fun"
    #fun=Category.find_by(name: "fun")-maybe wrong
    # ^^^ this method would only return the category "fun", not the places with "fun" under category
    # IF we have populated the Place database with column named 'category_id' and join table is in place
    # we can filter as such:
    # fun = Place.find_by(category_id: "1")
    # hence we would be able to READ all entries in Place database that contain category_id=1
    #randomize this fun variable
    render json: @categories, :include => :places
  end

  # GET /categories/1
  # shows nested places
  def show
    # @category = Category.find(params[:id]).places
    render json: @category, :include => :places
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      # @category = Category.find(params[:id])
      @category = Category.includes(:places).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
end
