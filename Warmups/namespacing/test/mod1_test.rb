require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mod1'

class Mod1Test < Minitest::Test

  def test_it_exists
    carl = Mod1::Student.new("Carl")

    assert_instance_of Mod1::Student, carl
  end

  def test_it_returns_the_name_it_was_given_at_initialize
    carl = Mod1::Student.new("Carl")
    expected = "Carl"
    actual = carl.name

    assert_equal expected, actual
  end

  def test_it_can_tell_where_it_goes_to_school
    carl = Mod1::Student.new("Carl")
    expected = "I go to Turing."
    actual = carl.school

    assert_equal expected, actual
  end

  def test_if_it_thinks_school_is_difficult
    carl = Mod1::Student.new("Carl")
    expected = "What? Sorry I didn't hear you. I was working on school work."
    actual = carl.is_school_difficult

    assert_equal expected, actual
  end

  def test_it_has_projects_to_work_on
    carl = Mod1::Student.new("Carl")
    expected = "Black Thursday"
    actual = carl.current_project

    assert_equal expected, actual
  end

  def test_it_has_a_favorite_football_team_that_it_shares_with_mod_4
    carl = Mod1::Student.new("Carl")
    expected = "Denver Fucking Broncos"
    actual = carl.favorite_football_team

    assert_equal expected, actual
  end
end
