require './lib/shared_methods'

module Mod1
  class Student

    include SharedMethods

    def speak
      "I am in Mod 1"
    end

    def current_project
      "Black Thursday"
    end
  end
end
