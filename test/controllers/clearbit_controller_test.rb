require 'test_helper'

class ClearbitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clearbit_index_url
    assert_response :success
  end

end
