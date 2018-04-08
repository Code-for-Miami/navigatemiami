require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'should not save location without name' do
    location = Location.new
    location.save

    assert_equal("can't be blank", location.errors[:name][0])
  end

  test 'should not save location without address' do
    location = Location.new
    location.save

    assert_equal("can't be blank", location.errors[:address1][0])
  end

  test 'should not save location without city' do
    location = Location.new
    location.save

    assert_equal("can't be blank", location.errors[:city][0])
  end

  test 'should not save location without zip' do
    location = Location.new
    location.save

    assert_equal("can't be blank", location.errors[:zip][0])
  end

end
