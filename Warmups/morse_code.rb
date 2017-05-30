class EnglishToMorse
  attr_reader :alphabet_english, :morse_alphabet
  attr_accessor :something, :alphabet_hash

  def initialize
    @something = something
    @alphabet_english = ["a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
    "s", "t", "u", "v", "w", "x", "y", "z"]
    @morse_alphabet = [".-", "-...", "-.-.", "-..", ".",
      "..-.", "--.", "....", "..", ".---", "-.-", ".-..",
      "--", "-.", "---", ".--.", "--.-", ".--.", "--.-",
      ".-.", "...", "-", "..-", "...-", ".--", "-..-",
      "-.--", "--.."]
    @alphabet_hash = {}
    # @translater = translater
  end

  def split
    @string = string.split("")
  end

  def create_hash
    alphabet_english.each_with_index do |item, index|
      alphabet_hash = {alphabet_english[index] => morse_alphabet[index]}
    end
    alphabet_hash
  end
end
#
# string = "hello"
# string = string.downcase.split("")
# translate = []
#
# string.each do |letter|
#   if letter == "h"
#     letter = "...."
#     translate << letter
#   elsif letter == "e"
#     letter = "."
#     translate << letter
#   elsif letter == "l"
#     letter = ".-.."
#     translate << letter
#   elsif letter == "o"
#     letter = "---"
#     translate << letter
#   else
#   end
# end
#
# morse = translate.join
#
# puts "Translating string #{string}..."
# sleep(1)
# puts "...computing..."
# sleep(1)
# puts "Translation complete, see message below."
# puts "#{morse}"
