puts "Вы пришли сдавать экзамен, зная только 50% от всех билетов. Что будете делать?"
puts "1.Тянуть с левой части стола\n2.С правой стороны"
choice = gets.chomp

while choice != "1" && choice != "2" do
    puts "Нет такого варианта.Попробуйте еще раз"
    choice = gets.chomp
end

if (choice == "1")
    abort "Вы вытянули билет, который знали и успешно сдали экзамен!"
else 
    puts "Увы, Вы вытянули билет, который не знали..."
    puts "1.Сдаться и пойти на пересдачу\n2.Попробовать блеснуть умом"
    choice = gets.chomp

    while choice != "1" && choice != "2" do
        puts "Нет такого варианта.Попробуйте еще раз"
        choice = gets.chomp
    end

    if (choice == "1")
        abort "Увы, встретимся летом"
    else 
        abort "Удача на Вашей стороне, Вы сдали!    "
    end
end