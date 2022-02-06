# Исходный массив:
# [1, 2, 3, 4, 5, 6, 7]
# Новый массив, полученный из исходного:
# [7, 6, 5, 4, 3, 2, 1]

array = [1, 2, 3, 4, 5, 6, 7]
puts "Исходный массив: #{array.to_s}"
reverse_array = []

array.each do |el|
    reverse_array.unshift(el) 
end

puts "Новый массив, полученный из исходного: #{reverse_array.to_s}"