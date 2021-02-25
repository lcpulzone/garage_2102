require "minitest/autorun"
require "minitest/pride"
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def test_it_exists
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_instance_of Owner, owner_1
  end

  def test_it_has_readable_attributes
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_equal "Regina George", owner_1.name
    assert_equal "Heiress", owner_1.occupation
  end

  def test_it_has_no_cars
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_equal [], owner_1.cars
  end

  def test_it_can_buy_cars
    owner_1 = Owner.new('Regina George', 'Heiress')

    assert_equal [car_1], owner_1.buy('1967 Green Ford Mustang')
    assert_equal [car_1], owner_1.cars
    assert_equal [car_2], owner_1.buy('2001 Silver BMW 3-Series')
    assert_equal [car_1, car_2], owner.cars
    assert_equal [car_3], owner_1.buy('1963 Red Chevrolet Corvette')
  end

  def test_it_has_vintage_cars
    owner_1 = Owner.new('Regina George', 'Heiress')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Silver BMW 3-Series')
    owner_1.buy('1963 Red Chevrolet Corvette')

    assert_equal [car_1, car_2, car_3], owner_1.vintage_cars
  end
end
