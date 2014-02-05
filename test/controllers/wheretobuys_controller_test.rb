require 'test_helper'

class WheretobuysControllerTest < ActionController::TestCase
  setup do
    @wheretobuy = wheretobuys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wheretobuys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wheretobuy" do
    assert_difference('Wheretobuy.count') do
      post :create, wheretobuy: { address: @wheretobuy.address, city: @wheretobuy.city, country: @wheretobuy.country, email_id: @wheretobuy.email_id, fax_no: @wheretobuy.fax_no, phone_no: @wheretobuy.phone_no, w_days: @wheretobuy.w_days, w_hours: @wheretobuy.w_hours }
    end

    assert_redirected_to wheretobuy_path(assigns(:wheretobuy))
  end

  test "should show wheretobuy" do
    get :show, id: @wheretobuy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wheretobuy
    assert_response :success
  end

  test "should update wheretobuy" do
    patch :update, id: @wheretobuy, wheretobuy: { address: @wheretobuy.address, city: @wheretobuy.city, country: @wheretobuy.country, email_id: @wheretobuy.email_id, fax_no: @wheretobuy.fax_no, phone_no: @wheretobuy.phone_no, w_days: @wheretobuy.w_days, w_hours: @wheretobuy.w_hours }
    assert_redirected_to wheretobuy_path(assigns(:wheretobuy))
  end

  test "should destroy wheretobuy" do
    assert_difference('Wheretobuy.count', -1) do
      delete :destroy, id: @wheretobuy
    end

    assert_redirected_to wheretobuys_path
  end
end
