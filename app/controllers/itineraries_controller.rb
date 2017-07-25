class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :update, :destroy]

  # GET /itineraries
  def index
    @itineraries = Itinerary.all

    render json: @itineraries
  end

  # GET /itineraries/1
  def show
    render json: @itinerary
  end

  # POST /itineraries
  def create
    @itinerary = Itinerary.new(itinerary_params)

    if @itinerary.save
      render json: @itinerary, status: :created, location: @itinerary
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itineraries/1
  def update
    if @itinerary.update(itinerary_params)
      render json: @itinerary
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /itineraries/1
  def destroy
    @itinerary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def itinerary_params
      params.require(:itinerary).permit(:trip_id)
    end
end
