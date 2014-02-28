require 'test_helper'

module Booking
  class SchedulesControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
    test "should get show" do
      get :show
      assert_response :success
    end
  
  end
end
