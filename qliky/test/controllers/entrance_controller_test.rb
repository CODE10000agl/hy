require 'test_helper'

class EntranceControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get auth" do
    get :auth
    assert_response :success
  end

end
