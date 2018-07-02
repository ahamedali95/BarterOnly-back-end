require 'test_helper'

class Api::V1::PurchaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_purchase_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_purchase_create_url
    assert_response :success
  end

end
