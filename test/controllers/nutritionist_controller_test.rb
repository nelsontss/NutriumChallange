require 'test_helper'

class NutritionistControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get nutritionist_search_url
    assert_response :success
  end

end
