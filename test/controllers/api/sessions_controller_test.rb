require 'test_helper'

class Api::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_sessions_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_sessions_create_url
    assert_response :success
  end

end
