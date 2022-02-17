def bmi(weight, height)
    weight / (height**2)
  end
  
  def bmi_result(index)
    result = if index <=16 
              "Выраженный дефицит массы тела"
            elsif (16...18.5).include?(index)
              "Недостаточная (дефицит) масса тела"
            elsif (18.5...25).include?(index)
              "Норма"
            elsif (25...30).include?(index)
              "Избыточная масса тела (предожирение)"
            elsif (30...35).include?(index)
              "Ожирение 1 степени"
            elsif (35...40).include?(index)
              "Ожирение 2 степени"
            else 
              "Ожирение 3 степени" 
            end
      result
  end
  
  puts "Введите ваш вес (в кг.):"
  user_weight = gets.to_f
  
  puts "Введите ваш рост (в м.):"
  user_height = gets.to_f
  
  user_index = bmi(user_weight, user_height)
  
  puts "Ваш индекс: #{user_index.round(2)}"
  puts bmi_result(user_index)