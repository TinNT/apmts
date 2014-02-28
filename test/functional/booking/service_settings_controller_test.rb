require 'test_helper'

module Booking
  class ServiceSettingsControllerTest < ActionController::TestCase
    setup do
      @service_setting = service_settings(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:service_settings)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create service_setting" do
      assert_difference('ServiceSetting.count') do
        post :create, service_setting: { day: @service_setting.day, day_off: @service_setting.day_off, from_hour: @service_setting.from_hour, from_min: @service_setting.from_min, name: @service_setting.name, service_id: @service_setting.service_id, to_hour: @service_setting.to_hour, to_min: @service_setting.to_min }
      end
  
      assert_redirected_to service_setting_path(assigns(:service_setting))
    end
  
    test "should show service_setting" do
      get :show, id: @service_setting
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @service_setting
      assert_response :success
    end
  
    test "should update service_setting" do
      put :update, id: @service_setting, service_setting: { day: @service_setting.day, day_off: @service_setting.day_off, from_hour: @service_setting.from_hour, from_min: @service_setting.from_min, name: @service_setting.name, service_id: @service_setting.service_id, to_hour: @service_setting.to_hour, to_min: @service_setting.to_min }
      assert_redirected_to service_setting_path(assigns(:service_setting))
    end
  
    test "should destroy service_setting" do
      assert_difference('ServiceSetting.count', -1) do
        delete :destroy, id: @service_setting
      end
  
      assert_redirected_to service_settings_path
    end
  end
end
