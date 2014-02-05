require 'test_helper'

class GlowControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get reviews" do
    get :reviews
    assert_response :success
  end

  test "should get haircare" do
    get :haircare
    assert_response :success
  end

  test "should get skincare" do
    get :skincare
    assert_response :success
  end

end
