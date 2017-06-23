require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get orders_main_url
    assert_response :success
  end

end
