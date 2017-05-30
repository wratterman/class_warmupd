require './lib/shared_methods'

module Mod4
  class Student

    include SharedMethods

    def speak
      "I am in Mod 4."
    end

    def current_project
      "Quantified Self"
    end
  end
end
