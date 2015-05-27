require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get datatable_index" do
    get :datatable_index
    assert_response :success
  end

end
