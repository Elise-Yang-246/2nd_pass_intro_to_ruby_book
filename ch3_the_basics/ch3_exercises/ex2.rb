num = 1234

puts thousands = num / 1000
puts hundreds = (num / 100) % 10
puts tens = ((num / 10) % 100) % 10
puts ones = ((num % 1000) % 100) % 10