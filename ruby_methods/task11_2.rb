if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

def initials (name, surname, patronymic)
    return "#{surname} #{name[0]}.#{patronymic[0]}."
end

puts "Введите фамилию: "
user_surname = gets.chomp

puts "Введите имя: " 
user_name = gets.chomp

puts "Введите отчество: "
user_patronymic = gets.chomp

puts "Ваше ФИО сокращенно: "
puts initials(user_name, user_surname, user_patronymic)