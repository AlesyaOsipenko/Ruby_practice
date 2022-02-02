numbers = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

puts "Подкидывается монетка..."
sleep(1)

if (numbers.sample == 0)
    puts "Ребро"
elsif (numbers.sample == 1 || numbers.sample == 2 || numbers.sample == 3 || numbers.sample == 4 || numbers.sample == 5)
    puts "Выпала решка"
else
    puts "Выпал орел"
end
