require 'test_helper'

class GasStopsControllerTest < ActionController::TestCase
  setup do
    @gas_stop = gas_stops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_stops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gas_stop" do
    assert_difference('GasStop.count') do
      post :create, gas_stop: { date: @gas_stop.date, invoice_number: @gas_stop.invoice_number, location: @gas_stop.location, metric: @gas_stop.metric, state: @gas_stop.state, trip_report_id: @gas_stop.trip_report_id, vendors_name: @gas_stop.vendors_name, volume: @gas_stop.volume }
    end

    assert_redirected_to gas_stop_path(assigns(:gas_stop))
  end

  test "should show gas_stop" do
    get :show, id: @gas_stop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gas_stop
    assert_response :success
  end

  test "should update gas_stop" do
    put :update, id: @gas_stop, gas_stop: { date: @gas_stop.date, invoice_number: @gas_stop.invoice_number, location: @gas_stop.location, metric: @gas_stop.metric, state: @gas_stop.state, trip_report_id: @gas_stop.trip_report_id, vendors_name: @gas_stop.vendors_name, volume: @gas_stop.volume }
    assert_redirected_to gas_stop_path(assigns(:gas_stop))
  end

  test "should destroy gas_stop" do
    assert_difference('GasStop.count', -1) do
      delete :destroy, id: @gas_stop
    end

    assert_redirected_to gas_stops_path
  end
end
