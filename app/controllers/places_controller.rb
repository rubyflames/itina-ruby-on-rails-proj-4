class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]
  before_action :search_place, only: [:index]

  # GET /places
  def index
    render json: @places#, :include => :categories
  end

  # GET /places/1
  def show
    render :json =>  @place, :include => :categories
  end

  # POST /places
  def create
    @place = Place.new(place_params)

    if @place.save
      render json: @place, status: :created, location: @place
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places/1
  def update
    if @place.update(place_params)
      render json: @place
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      # no need la
      # @place = Place.includes(:categories).find(params[:id])
      @place = Place.find(params[:id])
    end

    def search_place

      system('clear')

      if params[:category_ids]
        # puts "catids: "
        sql = """select p.* from places p inner join categories_places cp on p.id = cp.place_id
                 where cp.category_id in (#{params[:category_ids]})
                 order by random() LIMIT 3;"""
         @places = ActiveRecord::Base.connection.exec_query(sql)
      else
        @places = Place.all
      end
    end

    # Only allow a trusted parameter "white list" through.
    def place_params
      params.require(:place).permit(:name, :lat, :lng, :price_pax, :duration)
    end
end
