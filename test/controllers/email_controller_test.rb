require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  setup do
    @visit = visits(:one)
  end

  test "should redirect to visit/index" do
    get :visit, id: 33
    assert_redirected_to visits_path
  end

  test "should redirect to visit/show/:id" do
    get :visit, id: @visit
    assert_redirected_to visit_path(assigns(:visit))
  end

end
