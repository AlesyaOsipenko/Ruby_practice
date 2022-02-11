file_names = Dir.glob('data/*')

puts "Какой файл вам показать? (введите номер)"
file_names.each_with_index do|file_name, index|
    puts "#{index}: #{file_name}"
end

choice = gets.to_i

puts "Привет!"
file_name = file_names[choice]
file = File.open(file_name, "r:UTF-8") do |f|
  puts f.read
end
puts "Я содержимое файла #{file_name}"