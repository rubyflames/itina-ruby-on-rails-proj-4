require 'test_helper'

class ItinerariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itinerary = itineraries(:one)
  end

  test "should get index" do
    get itineraries_url, as: :json
    assert_response :success
  end

  test "should create itinerary" do
    assert_difference('Itinerary.count') do
      post itineraries_url, params: { itinerary: { trip_id: @itinerary.trip_id } }, as: :json
    end

    assert_response 201
  end

  test "should show itinerary" do
    get itinerary_url(@itinerary), as: :json
    assert_response :success
  end

  test "should update itinerary" do
    patch itinerary_url(@itinerary), params: { itinerary: { trip_id: @itinerary.trip_id } }, as: :json
    assert_response 200
  end

  test "should destroy itinerary" do
    assert_difference('Itinerary.count', -1) do
      delete itinerary_url(@itinerary), as: :json
    end

    assert_response 204
  end
end
