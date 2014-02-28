require 'test_helper'

module Booking
  class SchedulesControllerTest < ActionController::TestCase
    setup do
      @schedule = schedules(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:schedules)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create schedule" do
      assert_difference('Schedule.count') do
        post :create, schedule: { day: @schedule.day, day_off: @schedule.day_off, from_hour: @schedule.from_hour, from_min: @schedule.from_min, name: @schedule.name, service_id: @schedule.service_id, to_hour: @schedule.to_hour, to_min: @schedule.to_min }
      end
  
      assert_redirected_to schedule_path(assigns(:schedule))
    end
  
    test "should show schedule" do
      get :show, id: @schedule
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @schedule
      assert_response :success
    end
  
    test "should update schedule" do
      put :update, id: @schedule, schedule: { day: @schedule.day, day_off: @schedule.day_off, from_hour: @schedule.from_hour, from_min: @schedule.from_min, name: @schedule.name, service_id: @schedule.service_id, to_hour: @schedule.to_hour, to_min: @schedule.to_min }
      assert_redirected_to schedule_path(assigns(:schedule))
    end
  
    test "should destroy schedule" do
      assert_difference('Schedule.count', -1) do
        delete :destroy, id: @schedule
      end
  
      assert_redirected_to schedules_path
    end
  end
end
