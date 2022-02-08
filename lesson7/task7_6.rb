computer_number = rand(16)
puts "Загадано число от 0 до 15, отгадайте какое?"

user_number = nil

3.times do
    user_number = gets.to_i

        break if user_number == computer_number

    hot_or_not = (user_number - computer_number).abs <=2 ? "Тепло" : "холодно" 
    more_or_less = user_number > computer_number ? "меньше" : "больше"

    puts "#{hot_or_not} (нужно #{more_or_less})"
end

if user_number == computer_number 
    puts "ура, вы выиграли!"
else
    puts "Вы не угадали, загадано было #{computer_number}"
end