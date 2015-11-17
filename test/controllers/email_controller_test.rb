require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get visit" do
    get :visit
    assert_response :success
  end

end
