require 'test_helper'

class CitationSourceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get citation_source_index_url
    assert_response :success
  end

end
