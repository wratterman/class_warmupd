class PairingMixer

  attr_reader :paired_teams, :team_one, :team_two, :team_three, :team_four

  def initialize
    @paired_teams = []
    @team_one = []
    @team_two = []
    @team_three = []
    @team_four = []
  end

  def dev_list
    ["Alex", "Bernadette", "Charles", "Dana", "Eddie", "Fernando", "Gus", "Hiro"]
  end

  def first_paired_devs
    @team_one   = [dev_list[0], dev_list[1]]
    @team_two   = [dev_list[2], dev_list[3]]
    @team_three = [dev_list[4], dev_list[5]]
    @team_four  = [dev_list[6], dev_list[7]]
    @paired_teams = [team_one, team_two, team_three, team_four]
  end

  def mix_teams(days)
    days.times do
      index = rand(0 .. 7)
      second_index = rand(0 .. 7)
      @team_one = [dev_list[index], dev_list[]]

    end


  end

  def cannot_be_same_person
    if index = rand(0 .. 7) == second_index = rand(0 .. 7)
      false
    else
      true
    end
end
