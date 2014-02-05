require 'test_helper'

class CmsControllerTest < ActionController::TestCase
  setup do
    @cm = cms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cm" do
    assert_difference('Cm.count') do
      post :create, cm: { meta_desc: @cm.meta_desc, meta_keywords: @cm.meta_keywords, page_content: @cm.page_content, page_title: @cm.page_title }
    end

    assert_redirected_to cm_path(assigns(:cm))
  end

  test "should show cm" do
    get :show, id: @cm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cm
    assert_response :success
  end

  test "should update cm" do
    patch :update, id: @cm, cm: { meta_desc: @cm.meta_desc, meta_keywords: @cm.meta_keywords, page_content: @cm.page_content, page_title: @cm.page_title }
    assert_redirected_to cm_path(assigns(:cm))
  end

  test "should destroy cm" do
    assert_difference('Cm.count', -1) do
      delete :destroy, id: @cm
    end

    assert_redirected_to cms_path
  end
end
