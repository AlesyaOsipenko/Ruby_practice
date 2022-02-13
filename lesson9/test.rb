name = ARGV[0]
version = "Тест \"Ревнивы ли вы\". Версия 0.4. (c) goodprogrammer.ru\n\n"

# Если пользователь забыл передать аргумент, нам все равно надо его как-то
# называть. Проверим, если в name лежит nil (то есть пользователь ничего не
# указал), запишем туда строку 'Таинственная персона'
if name == nil
    name = "Таинственная Персона"
  elsif name == "-v"
    # Если пользователь хочет только выяснить версию программы или просто
    # убедиться, что она работает, выводим информацию о программе и выходим.
    puts version
    exit
  end

# Код для преобразования входного аргумента в кодировку utf-8 на Windows
if Gem.win_platform? && ARGV[0]
    name = name.encode("UTF-8")
end


questions = [
    # Вопросы
    "Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?",
    "Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?",
    "Вы расспрашиваете его о работе, о коллегах?",
    "Вы считаете, что каждую свободную минуту должны проводить вместе?",
    "Он для вас — свет в окошке?",
    "Случается ли вам проверять его корреспонденцию и рыться в его вещах?",
    "Чем чаще он говорит о своих чувствах, тем меньше вы верите?",
    "Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?",
    "Вы всегда спрашиваете у него, куда он ходит и с кем встречается?",
    "Если вы на него обижены, то молчите по нескольку дней?",
    "Вас мучают мысли о его бывшей возлюбленной?",
    "Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?"
]

results = [
    # 10 и более ответов «да».
    "Вы болезненно ревнивы. Не думайте, что если избранник вас любит, то он автоматически становится вашей собственностью."+
    "Вы считаете себя непривлекательной и боитесь, что он бросит вас ради какой нибудь красавицы. Вы ни в чем не уверены, особенно в нем."+
    "Задумайтесь над этим, потому что нельзя быть настолько ревнивой и агрессивной, это может привести к конфликтам и даже к разрыву отношений.",

    # 5–9 ответов «да». 
    "Ваша ревность действует на вас мобилизующе, но не она одна управляет вашим поведением. В минуту слабости случается и вам устраивать скандалы."+
    "Но, успокоившись, вы понимаете, что для вашей ревности не было никаких оснований.",

    # Менее 5 ответов «да». 
    "Вам совершенно незнакомо чувство ревности. Но тревога и беспокойство могут накапливаться со временем."+
    "Вы должны решать волнующие вас проблемы со своим партнером.",
]

user_input = nil
yes_answer = 0
puts "Здравствуйте! Пройдите наш тестик, #{name}"

questions.each do |item|
    puts item
    user_input = STDIN.gets.chomp.downcase
    while (user_input!= "yes") && (user_input!= "no") do
        puts "Ответ должен быть yes или no"
        user_input = STDIN.gets.chomp.downcase
    end
    yes_answer+=1 if user_input == "yes" 
end

result = if yes_answer >= 10 
        results[0]
    elsif yes_answer >=5 
        results[1]
    else
        results[2]
    end

puts "#{name}, Ваш ответ: #{result}"





