require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  test "should not save a visit without date" do
  	visit = Visit.new
    assert_not visit.save
  end
end
