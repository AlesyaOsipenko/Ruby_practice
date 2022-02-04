# Курс доллара:
# 68.93
# Сколько у вас рублей?
# 100000
# Сколько у вас долларов?
# 2500
# Вам надо продать 524.63$

puts "Курс доллара:"
kurs = gets.to_f
puts "Сколько у вас рублей?"
sum_rub = gets.to_f
puts "Сколько у вас долларов?"
sum_dol = gets.to_f

perevod_rub = sum_dol * kurs

if (sum_rub > perevod_rub)
    diff = sum_rub - perevod_rub
    puts "Вам надо продать: " + (diff/2).to_s + " rub"
elsif (sum_rub == perevod_rub)
    puts "Ваш портфель сбалансирован!"
else 
    diff = perevod_rub - sum_rubсв  (diff/2/kurs).to_s + " $"
end