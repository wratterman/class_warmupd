require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_alergies'

class FoodAlergiesTest < Minitest::Test

  def test_it_exists
    a = FoodAlergies.new(2)
    actual = a.class

    assert_equal FoodAlergies, actual
  end

  def test_it_records_number_when_class_is_run
    a = FoodAlergies.new(2)
    actual = a.number
    expected = 2

    assert_equal expected, actual
  end

  def test_it_pulls_from_the_alergy_scale_file
    a = FoodAlergies.new(2)
    actual = a.scale.class
    expected = AllergieScale

    assert_equal expected, actual
  end

  def test_it_has_access_to_hash_with_allergies_store_by_numerical_score
    a = FoodAlergies.new(2)
    actual = a.scale

    assert_instance_of AllergieScale, actual

    actual = a.scale.allergies
    expected = {
    1 => "eggs", 2 => "peanuts", 4 => "shellfish",
    8 => "strawberries", 16 => "tomatoes", 32 => "chocolate",
    64 => "pollen", 128 => "cats"
    }

    assert_equal expected, actual
  end

  def test_it_returns_an_array_of_allergies_if_score_is_255_or_greater
    a = FoodAlergies.new(255)
    actual = a.max_allergies
    expected = [
      "eggs", "peanuts", "shellfish", "strawberries", "tomatoes",
      "chocolate", "pollen", "cats"
    ]

    assert_equal expected, actual
  end

  def test_it_can_returns_eggs_if_key_and_number_equals_1
    a = FoodAlergies.new(1)
    actual = a.only_one_allergy
    expected = "eggs"

    assert_equal expected, actual
  end

  def test_it_can_return_peanuts_if_key_and_number_is_2
    a = FoodAlergies.new(2)
    actual = a.only_one_allergy
    expected = "peanuts"

    assert_equal expected, actual
  end

  def test_will_it_also_return_the_correct_values_of_chocolate_if_number_is_32
    a = FoodAlergies.new(32)
    actual = a.only_one_allergy
    expected = "chocolate"

    assert_equal expected, actual
  end

end
