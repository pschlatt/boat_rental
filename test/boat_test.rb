require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < Minitest::Test

  def setup
    @kayak = Boat.new(:kayak, 20)
  end

  def test_for_boat_instance
    assert_instance_of Boat, @kayak
  end

  def test_for_boat_type
    assert_equal :kayak, @kayak.type
  end

  def test_for_price_per_hour
    assert_equal 20, @kayak.price_per_hour
  end

  def test_for_hours_rented
    assert_equal 0, @kayak.hours_rented
  end

  def test_add_hours_rented
    @kayak.add_hour
    @kayak.add_hour
    @kayak.add_hour
    assert_equal 3, @kayak.hours_rented
  end

end
