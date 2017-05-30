require "./lib/food_alergy_hash"
# require 'pry'

class FoodAlergies

  attr_reader :scale, :number

  def initialize(number)
    @scale = AllergieScale.new
    @number = number
  end

  def only_one_allergy
    list_of_allergies = []
    scale.allergies.each_key do |key|
      if number == key
        list_of_allergies << scale.allergies[key]
      end
    end
    p list_of_allergies.join("")
  end

  def max_allergies
    list_of_allergies = []
    if number >= 255
      scale.allergies.each_key do |key|
        list_of_allergies << scale.allergies[key]
      end
    end
    p list_of_allergies
  end
end


puts "Please enter allergy score."
number = gets.chomp

a = FoodAlergies.new(number)
# binding.pry
