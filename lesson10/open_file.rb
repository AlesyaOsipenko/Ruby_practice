
file_path = ARGV[0]

if file_path == nil
    abort "Hello, puts file directory"
end

if File.exist?(file_path)
    f = File.new('./data/quotes.txt', "r:UTF-8")
    lines = f.readlines
    f.close #не забываем закрывать файл!#
    puts "Открыли файл: " + file_path
else
    abort "Файл не найден"
end

#Для счета пустых строк#
empty_lines_counter = 0

#Для счета последний пяти#
last_five_lines = []

lines.each_with_index do |line, index|
    # Если строка состоит из одного символа "\n", увеличиваем счетчик пустых
    # строк.
    if line == "/n"
      empty_lines_counter += 1
    end
  
    # Если индекс элемента отличается от длины массива на 5 или меньше, добавляем
    # этот элемент в массив последних 5 строк.
    if lines.size - index <= 5
      last_five_lines << line
    end
  end

# Наконец, можем вывести всю информацию пользователю. Выводим количество строк в
# файле (оно равно количеству элементов в массиве lines), количество пустых
# строк empty_lines_counter и каждую строку из массива last_five_lines.
puts "Всего строк: " + lines.length.to_s
puts "Пустых строк: " + empty_lines_counter.to_s
puts "Последние 5 строк файла: "
puts

for line in last_five_lines
  puts line
end