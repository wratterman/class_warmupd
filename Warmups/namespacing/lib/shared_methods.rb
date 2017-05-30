module SharedMethods

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def school
    "I go to Turing."
  end

  def is_school_difficult
    "What? Sorry I didn't hear you. I was working on school work."
  end

  def favorite_football_team
    "Denver Fucking Broncos"
  end
end
