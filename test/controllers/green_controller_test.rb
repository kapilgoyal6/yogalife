require 'test_helper'

class GreenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get living_green" do
    get :living_green
    assert_response :success
  end

  test "should get planet_earth" do
    get :planet_earth
    assert_response :success
  end

end
