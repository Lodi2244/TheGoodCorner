require 'test_helper'

class AdvancedSearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get advanced_searches_new_url
    assert_response :success
  end

  test "should get show" do
    get advanced_searches_show_url
    assert_response :success
  end

end
