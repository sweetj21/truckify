require 'test_helper'

class TripReportsControllerTest < ActionController::TestCase
  setup do
    @trip_report = trip_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_report" do
    assert_difference('TripReport.count') do
      post :create, trip_report: { driver_id: @trip_report.driver_id, most_distant_city: @trip_report.most_distant_city, odometer_end: @trip_report.odometer_end, odometer_start: @trip_report.odometer_start, trip_end_date: @trip_report.trip_end_date, trip_ended_at: @trip_report.trip_ended_at, trip_start_date: @trip_report.trip_start_date, trip_started_at: @trip_report.trip_started_at, unit_id: @trip_report.unit_id }
    end

    assert_redirected_to trip_report_path(assigns(:trip_report))
  end

  test "should show trip_report" do
    get :show, id: @trip_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_report
    assert_response :success
  end

  test "should update trip_report" do
    put :update, id: @trip_report, trip_report: { driver_id: @trip_report.driver_id, most_distant_city: @trip_report.most_distant_city, odometer_end: @trip_report.odometer_end, odometer_start: @trip_report.odometer_start, trip_end_date: @trip_report.trip_end_date, trip_ended_at: @trip_report.trip_ended_at, trip_start_date: @trip_report.trip_start_date, trip_started_at: @trip_report.trip_started_at, unit_id: @trip_report.unit_id }
    assert_redirected_to trip_report_path(assigns(:trip_report))
  end

  test "should destroy trip_report" do
    assert_difference('TripReport.count', -1) do
      delete :destroy, id: @trip_report
    end

    assert_redirected_to trip_reports_path
  end
end
