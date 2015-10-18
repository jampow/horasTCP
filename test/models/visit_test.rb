require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  test "should not save a visit without date" do
  	visit = Visit.new( 
  		:start => '9:00', 
  		:finish => '13:00',
  		:description => 'test'
  	)
    assert_not visit.save
  end

  test "should not save a visit without a start time" do
  	visit = Visit.new(
  		:day => '2015-10-18',
  		:finish => '13:00',
  		:description => 'test'
  	)
    assert_not visit.save
  end

  test "should not save a visit without a finish time" do
    visit = Visit.new(
      :day => '2015-10-18',
      :start => '9:00',
      :description => 'test'
    )
    assert_not visit.save
  end

  test "should not save a visit without a description" do
    visit = Visit.new(
      :day => '2015-10-18',
      :start => '9:00',
      :finish => '13:00'
    )
    assert_not visit.save
  end

  test "should not save when the finish time is less than time" do
    visit = Visit.new(
      :day => '2015-10-18',
      :start => '9:00',
      :finish => '8:00',
      :description => 'test'
    )
    assert_not visit.save
  end

  test "should not save when the finish time is less than half hour" do
    visit = Visit.new(
      :day => '2015-10-18',
      :start => '9:00',
      :finish => '9:29',
      :description => 'test'
    )
    assert_not visit.save
  end

end
