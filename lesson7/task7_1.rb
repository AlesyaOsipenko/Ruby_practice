puts "Введите N"
user_count = gets.to_i
array = []
element = 1
sum = 0

while element <= user_count do
    array.push(element)
    sum += element
    element += 1
end

puts array.to_s
puts "Сумма чисел: #{sum}"