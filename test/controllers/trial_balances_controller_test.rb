require 'test_helper'

class TrialBalancesControllerTest < ActionController::TestCase
  setup do
    @trial_balance = trial_balances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trial_balances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trial_balance" do
    assert_difference('TrialBalance.count') do
      post :create, trial_balance: { month: @trial_balance.month, totalHours: @trial_balance.totalHours, valueHour: @trial_balance.valueHour, valueMonth: @trial_balance.valueMonth, year: @trial_balance.year }
    end

    assert_redirected_to trial_balance_path(assigns(:trial_balance))
  end

  test "should show trial_balance" do
    get :show, id: @trial_balance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trial_balance
    assert_response :success
  end

  test "should update trial_balance" do
    patch :update, id: @trial_balance, trial_balance: { month: @trial_balance.month, totalHours: @trial_balance.totalHours, valueHour: @trial_balance.valueHour, valueMonth: @trial_balance.valueMonth, year: @trial_balance.year }
    assert_redirected_to trial_balance_path(assigns(:trial_balance))
  end

  test "should destroy trial_balance" do
    assert_difference('TrialBalance.count', -1) do
      delete :destroy, id: @trial_balance
    end

    assert_redirected_to trial_balances_path
  end
end
