class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  # GET /trips
  def index
    @trips = Trip.all

    render json: @trips
  end

  # GET /trips/1
  # shows nested itineraries and places
  def show
    render json: @trip, :include => {
      :itineraries => {
        :include => :places
      }
    }
  end

  # POST /trips
  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trips/1
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trips/1
  def destroy
    @trip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.includes(:itineraries).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trip_params
      params.require(:trip).permit(:duration, :pax, :budget, :user_id)
    end
end
