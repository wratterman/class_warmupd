=begin

word = "panda"

puts word

word = word.chars

puts word

word.shift

puts word

word[4] = "p"

puts word

word[1] = "d"

puts word

word[2] = "n"

puts word

=end

=begin

word = "panda"

word = word.chars

4.times do
  word.shift
end

word.unshift('d', 'n', 'a', 'p')

puts word

=end

puts "Enter a word to be reversed"

input = gets.chomp.chars
counter = -1
reverse = []

until counter < -input.length
  reverse << input[counter]
  counter -= 1
end

puts reverse.join  
