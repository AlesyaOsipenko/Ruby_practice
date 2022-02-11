if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

puts "Мини-викторина. Ответьте на вопросы."

file_names =  Dir["#{__dir__}/data/*"]

random_file_names = file_names.sample(3)
 sleep 1

puts
correct_answers = 0

random_file_names.each do |file_name|

  lines = File.readlines(file_name, chomp: true, encoding: "UTF-8")

  puts lines[0]
  user_input = gets.strip

  if user_input.downcase == lines[1].downcase
    puts "Верный ответ!"
    correct_answers += 1
  else
    puts "Неправильно. Правильный ответ #{lines[1]}"
  end
  puts
end

puts
puts "Правильных ответов: #{correct_answers} из 3"
