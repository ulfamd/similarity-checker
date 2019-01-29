require 'test_helper'

class TfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tf_index_url
    assert_response :success
  end

end
