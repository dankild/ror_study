require "test_helper"

class TestAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_app = test_apps(:one)
  end

  test "should get index" do
    get test_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_test_app_url
    assert_response :success
  end

  test "should create test_app" do
    assert_difference('TestApp.count') do
      post test_apps_url, params: { test_app: { email: @test_app.email, first_name: @test_app.first_name, last_name: @test_app.last_name, phone: @test_app.phone, telegram: @test_app.telegram } }
    end

    assert_redirected_to test_app_url(TestApp.last)
  end

  test "should show test_app" do
    get test_app_url(@test_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_app_url(@test_app)
    assert_response :success
  end

  test "should update test_app" do
    patch test_app_url(@test_app), params: { test_app: { email: @test_app.email, first_name: @test_app.first_name, last_name: @test_app.last_name, phone: @test_app.phone, telegram: @test_app.telegram } }
    assert_redirected_to test_app_url(@test_app)
  end

  test "should destroy test_app" do
    assert_difference('TestApp.count', -1) do
      delete test_app_url(@test_app)
    end

    assert_redirected_to test_apps_url
  end
end
