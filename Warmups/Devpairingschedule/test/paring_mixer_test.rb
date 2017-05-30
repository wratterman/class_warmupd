require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/pairing_mixer'

class PairingMixerTest < Minitest::Test

  def test_it_exists
    a = PairingMixer.new
    expected = PairingMixer

    assert_instance_of expected, a
  end

  def test_it_has_empty_paired_teams_array_as_default_instance_of_object
    a = PairingMixer.new
    expected = []
    actual = a.paired_teams

    assert_equal expected, actual
  end

  def test_it_has_empty_team_arrays_as_default_instance_of_object
    a = PairingMixer.new
    expected = []

    assert_equal expected, a.team_one
    assert_equal expected, a.team_two
    assert_equal expected, a.team_three
    assert_equal expected, a.team_four
  end

  def test_it_has_a_list_of_developers
    a = PairingMixer.new
    expected = ["Alex", "Bernadette", "Charles", "Dana", "Eddie", "Fernando", "Gus", "Hiro"]
    actual = a.dev_list

    assert_equal expected, actual
  end

  def test_we_have_access_to_different_names_in_dev_list
    a = PairingMixer.new
    expected = "Charles"
    actual = a.dev_list[2]

    assert_equal expected, actual
  end

  def test_we_have_access_to_other_names_in_dev_list
    a = PairingMixer.new

    assert_equal "Alex", a.dev_list[0]
    assert_equal "Eddie", a.dev_list[4]
    assert_equal "Hiro", a.dev_list[7]
    assert_equal "Gus", a.dev_list[6]
    assert_equal "Fernando", a.dev_list[5]
  end

  def test_it_only_has_8_names_in_dev_list
    a = PairingMixer.new
    expected = 8
    actual = a.dev_list.length

    assert_equal expected, actual
  end

  def test_it_will_pair_off_devs_into_4_teams
    a = PairingMixer.new
    expected = [["Alex", "Bernadette"], ["Charles", "Dana"], ["Eddie", "Fernando"], ["Gus", "Hiro"]]
    actual = a.first_paired_devs

    assert_equal expected, actual
  end

  def test_paired_teams_array_updates_once_first_paired_devs_is_run
    a = PairingMixer.new
    a.first_paired_devs
    expected = [["Alex", "Bernadette"], ["Charles", "Dana"], ["Eddie", "Fernando"], ["Gus", "Hiro"]]
    actual = a.paired_teams

    assert_equal expected, actual
  end

  def test_it_has_empty_team_arrays_as_default_instance_of_object
    a = PairingMixer.new
    a.first_paired_devs

    assert_equal ["Alex", "Bernadette"], a.team_one
    assert_equal ["Charles", "Dana"], a.team_two
    assert_equal ["Eddie", "Fernando"], a.team_three
    assert_equal ["Gus", "Hiro"], a.team_four
  end

  def test_it_will_randomly_create_more_paired_teams
    skip
    a = PairingMixer.new
    actual = a.mix_teams(1)

    assert (("A" .. "X").to_a).include?(actual)
    assert (("a" .. "z").to_a).include?(actual)
  end
end
