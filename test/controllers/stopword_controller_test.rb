require 'test_helper'

class StopwordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stopword_index_url
    assert_response :success
  end

end
