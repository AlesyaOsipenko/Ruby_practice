# Введите строку, которую надо проверить на «палиндромность»:
# А роза упала на лапу Азора!
# Да, это палиндром
if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

puts "Введите строку, которую надо проверить на «палиндромность»: "
original_string = gets.chomp.delete(' -=_$@,.!?;: ').downcase

reverse_string = original_string.reverse

puts reverse_string

answer = original_string == reverse_string ? "Совпало" :  "Не совпало"
puts answer