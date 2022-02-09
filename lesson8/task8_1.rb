original_string = gets.chomp.delete(' ').downcase

reverse_string = original_string.reverse

puts reverse_string

answer = original_string == reverse_string ? "Совпало" :  "Не совпало"
puts answer