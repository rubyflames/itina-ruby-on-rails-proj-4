class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :destroy]
  before_action :search_place, only: [:index]

  # GET /places
  def index

    # puts params[:categories_id] + "asiugciasugciuasgc"

    # if(params[:categories_id])
    #
    #   @places = Category.where("id in (?)", req.body.categories_id).places
    #
    #xios.get('places',{params:{categories_id : this.state.value}})
    # else
    #   puts "it was false"
    #@places = Place.all
    #
    # end

    render json: @places #, :include => :categories

  end

  # GET /places/1
  def show
    render :json =>  @place, :include => :categories
  end

  # POST /placesxios.get('places',{params:{categories_id : this.state.value}})
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

      # puts :params
      # Parameters: {"categories_id"=>"1"}

      # puts params[:categories_id]
      # Parameters: {"categories_id"=>"1,2"}
      # 1,2
      #puts params[:categories_id].to_s
      #1,2,5

      #puts paramsategories_id].gsub! "'", ''
      #@place = Places.all

      #puts "asedd id in (#{params[:categories_id]})"
      #asedd id in (1,2)

      #@places = Place.includes(:categories).where(:categories_places.categories_id =>[])

      #.where("categories.id in (#{params[:categories_id]})")

      #puts @places
      #@places = null

      # Category.where('').each do |c|
      #   @places << c.places
      # end

      if params[:category_ids]

        sql = """select p.* from places p inner join categories_places cp on p.id = cp.place_id
                 where cp.category_id in (#{params[:category_ids]}) LIMIT 3;"""

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
