if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

def random_letters_in_word (word)
    return word.chars.shuffle.join
end

puts "Введите слово: "
user_input = gets.chomp

puts random_letters_in_word(user_input)