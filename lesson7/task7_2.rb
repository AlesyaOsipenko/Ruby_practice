array = []
puts "Какой длины будет массив случайных чисел? "
user_length = gets.to_i
count = 0

while count < user_length do
    array.push(rand(100))
    count += 1
end

puts array.to_s

cureent_max = 0
array.each do |item|
    if item > cureent_max
        cureent_max = item  
    end
end 
puts "Самое большое число: #{cureent_max}" 
