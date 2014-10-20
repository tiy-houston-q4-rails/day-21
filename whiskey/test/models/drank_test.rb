require 'test_helper'

class DrankTest < ActiveSupport::TestCase

  # abv -> Alcohol by Volume

  test "abv less than 0 is an error" do
    drank = Drank.new(abv: -1)
    drank.valid?
    assert_equal true, drank.errors[:abv].any?
  end

  test "abv over 100 is an error" do
    drank = Drank.new(abv: 101)
    drank.valid?
    assert_equal true, drank.errors[:abv].any?
  end

  test "abv of a string is an error" do
    drank = Drank.new(abv: "lots")
    drank.valid?
    assert_equal true, drank.errors[:abv].any?
  end
end
