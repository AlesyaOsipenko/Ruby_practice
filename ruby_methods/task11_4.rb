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

def reverse_string (string)
    string = string.split(" ")
    array = []
    string.each do |item|
        array.push(random_letters_in_word(item))
    end
    return array.join(" ")
end

puts "Введите фразу: "
user_input = gets.chomp

puts reverse_string(user_input)