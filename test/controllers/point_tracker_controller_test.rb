require 'test_helper'

class PointTrackerControllerTest < ActionController::TestCase
  test "should get leaderboard" do
    get :leaderboard
    assert_response :success
  end

end
