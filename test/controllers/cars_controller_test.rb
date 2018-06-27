require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_index_url
    assert_response :success
  end

  test "should get accelerate" do
    get cars_accelerate_url
    assert_response :success
  end

end
