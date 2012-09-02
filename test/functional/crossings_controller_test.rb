require 'test_helper'

class CrossingsControllerTest < ActionController::TestCase
  setup do
    @crossing = crossings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crossings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crossing" do
    assert_difference('Crossing.count') do
      post :create, crossing: { odometer_reading: @crossing.odometer_reading, routes_used: @crossing.routes_used, state: @crossing.state }
    end

    assert_redirected_to crossing_path(assigns(:crossing))
  end

  test "should show crossing" do
    get :show, id: @crossing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crossing
    assert_response :success
  end

  test "should update crossing" do
    put :update, id: @crossing, crossing: { odometer_reading: @crossing.odometer_reading, routes_used: @crossing.routes_used, state: @crossing.state }
    assert_redirected_to crossing_path(assigns(:crossing))
  end

  test "should destroy crossing" do
    assert_difference('Crossing.count', -1) do
      delete :destroy, id: @crossing
    end

    assert_redirected_to crossings_path
  end
end
