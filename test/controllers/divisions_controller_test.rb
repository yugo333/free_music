require 'test_helper'

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get divisions_index_url
    assert_response :success
  end

end
