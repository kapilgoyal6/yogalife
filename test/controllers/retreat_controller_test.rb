require 'test_helper'

class RetreatControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get international" do
    get :international
    assert_response :success
  end

  test "should get local" do
    get :local
    assert_response :success
  end

end
