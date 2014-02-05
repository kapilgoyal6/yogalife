require 'test_helper'

class HoroscopesControllerTest < ActionController::TestCase
  setup do
    @horoscope = horoscopes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horoscopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horoscope" do
    assert_difference('Horoscope.count') do
      post :create, horoscope: { background: @horoscope.background, desc: @horoscope.desc, end_date: @horoscope.end_date, logo: @horoscope.logo, start_date: @horoscope.start_date, subtitle: @horoscope.subtitle, title: @horoscope.title }
    end

    assert_redirected_to horoscope_path(assigns(:horoscope))
  end

  test "should show horoscope" do
    get :show, id: @horoscope
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horoscope
    assert_response :success
  end

  test "should update horoscope" do
    patch :update, id: @horoscope, horoscope: { background: @horoscope.background, desc: @horoscope.desc, end_date: @horoscope.end_date, logo: @horoscope.logo, start_date: @horoscope.start_date, subtitle: @horoscope.subtitle, title: @horoscope.title }
    assert_redirected_to horoscope_path(assigns(:horoscope))
  end

  test "should destroy horoscope" do
    assert_difference('Horoscope.count', -1) do
      delete :destroy, id: @horoscope
    end

    assert_redirected_to horoscopes_path
  end
end
