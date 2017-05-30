squares = []
(1..100).each do |num|
  num = num ** 2
  squares << num
end

value = squares.inject(:+)

sum = []
(1..100).each do |num|
  sum << num
end

other_value = (sum.inject(:+) ** 2)

answer = other_value - value
puts answer
