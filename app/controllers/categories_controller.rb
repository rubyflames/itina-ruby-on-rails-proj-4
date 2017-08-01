class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  # GET /categories
  # shows nested places
  def index
    #Old default code for GET request
    @categories = Category.all

    #This code will provide a response to the GET request.
    #Here, the items in the CATEGORIES db are randomized, and 2 are returned.
    # @categories = Category.order("RANDOM()").limit(2)

    render json: @categories, :include => :places
  end

  def rand_something
    @categories = Category.order("RANDOM()").limit(3)

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
      if params[:id] == "random"
        @category = Category.order("RANDOM()").limit(2)        
      elsif Integer(params[:id])
        @category = Category.includes(:places).find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
end
