require 'test_helper'

class SubcategoriesControllerTest < ActionController::TestCase
  setup do
    @subcategory = subcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcategory" do
    assert_difference('Subcategory.count') do
      post :create, subcategory: { cat_name: @subcategory.cat_name, desc: @subcategory.desc, sub_cat_name: @subcategory.sub_cat_name }
    end

    assert_redirected_to subcategory_path(assigns(:subcategory))
  end

  test "should show subcategory" do
    get :show, id: @subcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcategory
    assert_response :success
  end

  test "should update subcategory" do
    patch :update, id: @subcategory, subcategory: { cat_name: @subcategory.cat_name, desc: @subcategory.desc, sub_cat_name: @subcategory.sub_cat_name }
    assert_redirected_to subcategory_path(assigns(:subcategory))
  end

  test "should destroy subcategory" do
    assert_difference('Subcategory.count', -1) do
      delete :destroy, id: @subcategory
    end

    assert_redirected_to subcategories_path
  end
end
