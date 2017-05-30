require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mod4'

class Mod4Test < Minitest::Test

  def test_it_exists
    joey = Mod4::Student.new("Joey")

    assert_instance_of Mod4::Student, joey
  end

  def test_it_returns_the_name_it_was_given_at_initialize
    joey = Mod4::Student.new("Joey")
    expected = "Joey"
    actual = joey.name

    assert_equal expected, actual
  end

  def test_it_can_tell_where_it_goes_to_school
    joey = Mod4::Student.new("Joey")
    expected = "I go to Turing."
    actual = joey.school

    assert_equal expected, actual
  end

  def test_if_it_thinks_school_is_difficult
    joey = Mod4::Student.new("Joey")
    expected = "What? Sorry I didn't hear you. I was working on school work."
    actual = joey.is_school_difficult

    assert_equal expected, actual
  end

  def test_it_has_projects_to_work_on
    joey = Mod4::Student.new("Joey")
    expected = "Quantified Self"
    actual = joey.current_project

    assert_equal expected, actual
  end

  def test_it_has_a_favorite_football_team_that_it_shares_with_mod_1
    joey = Mod4::Student.new("Joey")
    expected = "Denver Fucking Broncos"
    actual = joey.favorite_football_team

    assert_equal expected, actual
  end

end
