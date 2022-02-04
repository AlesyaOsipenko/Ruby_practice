# Введите число 1:
# > -23
# Введите число 2:
# > 42
# Введите число 3:
# > 5

# Среднее арифметическое: 8

puts "Введите число 1:"
first_number = gets.to_i
puts "Введите число 2:"
second_number = gets.to_i
puts "Введите число 3:"
third_number = gets.to_i

average = (first_number + second_number + third_number) / 3

puts "Среднее арифметическое: " + average.to_s