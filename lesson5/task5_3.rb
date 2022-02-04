puts "Какая у вас на руках валюта?"
puts "1.Рубли \n2.Доллары"
choice = gets.chomp

puts "Сколько сейчас стоит 1 доллар в рублях?"
kurs = gets.to_f

if (choice == "1")
    puts "Сколько  у вас рублей?"
    sum_rub = gets.to_f
    
    sum_dol = sum_rub / kurs
    puts "Ваши запасы равны: $" + sum_dol.to_s
else 
    puts "Сколько  у вас долларов?"
    sum_dol = gets.to_f
    
    sum_rub = sum_dol * kurs
    puts "Ваши запасы равны: rub " + sum_rub.to_s
end


