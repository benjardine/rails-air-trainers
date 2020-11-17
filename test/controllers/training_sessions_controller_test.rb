require 'test_helper'

class TrainingSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get training_sessions_index_url
    assert_response :success
  end

end
