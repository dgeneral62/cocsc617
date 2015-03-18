require 'test_helper'

class CookiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get next_visit" do
    get :next_visit
    assert_response :success
  end

end
