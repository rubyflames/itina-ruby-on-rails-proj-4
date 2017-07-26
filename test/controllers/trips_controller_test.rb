require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url, as: :json
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
<<<<<<< HEAD
      post trips_url, params: { trip: { budget: @trip.budget, duration: @trip.duration, pax: @trip.pax, user_id: @trip.user_id } }, as: :json
=======
      post trips_url, params: { trip: { budget: @trip.budget, category: @trip.category, duration: @trip.duration, end_date: @trip.end_date, pax: @trip.pax, start_date: @trip.start_date, trip_name: @trip.trip_name } }, as: :json
>>>>>>> 4889905de938500d24e9cb26fffecede1ab62dd8
    end

    assert_response 201
  end

  test "should show trip" do
    get trip_url(@trip), as: :json
    assert_response :success
  end

  test "should update trip" do
<<<<<<< HEAD
    patch trip_url(@trip), params: { trip: { budget: @trip.budget, duration: @trip.duration, pax: @trip.pax, user_id: @trip.user_id } }, as: :json
=======
    patch trip_url(@trip), params: { trip: { budget: @trip.budget, category: @trip.category, duration: @trip.duration, end_date: @trip.end_date, pax: @trip.pax, start_date: @trip.start_date, trip_name: @trip.trip_name } }, as: :json
>>>>>>> 4889905de938500d24e9cb26fffecede1ab62dd8
    assert_response 200
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip), as: :json
    end

    assert_response 204
  end
end
