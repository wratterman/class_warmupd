def string_info
  string = "F6 33 6A"
  string = string.gsub!(" ", "")
  string_1 = string[0.. 1]
  string_2 = string[2.. 3]
  string_3 = string[4.. 5]
end

def rules_of_color_sorting(string)
  current_string.each_with_index do |value, index|

  end

end

def alphabet_and_numbers
  numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  letters = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
    "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  values_of_alphabet_and_numbers(number)
  values_of_alphabet_and_numbers(letters)
  numbers.any? < letters.any?
end

def values_of_alphabet_and_numbers(input)
  input = current
  index = 0
  current.length times do |index|
    current[index] < current[(index + 1)]
  end
end
