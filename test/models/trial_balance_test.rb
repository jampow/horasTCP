require 'test_helper'

class TrialBalanceTest < ActiveSupport::TestCase
  test "assert the total calc have been done" do
    balance = TrialBalance.new(
      :year => 2015,
      :month => 10,
      :worked_hours => 45.5,
      :hour_price => 90
    )

    assert balance.save
    assert_equal 4095, balance.total
  end

  test "should not save a duplicated month and year trial balance" do
    balance = TrialBalance.new(
      :year => 2015,
      :month => 11,
      :worked_hours => 40,
      :hour_price => 90
    )

    assert balance.save

    balance2 = TrialBalance.new(
      :year => 2015,
      :month => 11,
      :worked_hours => 44,
      :hour_price => 90
    )

    assert_not balance2.save
  end
end
