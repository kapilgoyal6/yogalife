require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get sort_by" do
    get :sort_by
    assert_response :success
  end

end
