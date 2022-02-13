if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

def circle_square(radius) 
    return 3.14159 * radius * radius
end 

puts "Введите радиус круга:"
rad = gets.to_f

puts "Площадь круга равна: " + circle_square(rad).to_s

puts "Введите радиус второго круга:"
rad = gets.to_f

# Как и в прошлый раз выведем пользователю радиус второго круга
puts "Площадь второго круга: " + circle_square(rad).to_s




