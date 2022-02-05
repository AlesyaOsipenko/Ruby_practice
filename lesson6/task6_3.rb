cars = ["Eminem", "Billy Bob", "Rocky", "Bono", "Cooper", "John", "Lil Lady", "Bruce", "Enzo", "Drake", "Lil Drake"]
puts "У нас всего #{cars.size} машин. Вам какую?" 
user_car = gets.to_i

if (user_car >= 1 && user_car<=cars.size)
    puts "Поздравляем, вы получили: #{cars[user_car - 1]}"
else 
    puts "Извините, машины с таким номером у нас нет :("   
end