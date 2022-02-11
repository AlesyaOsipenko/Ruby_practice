# current_path = File.dirname(__FILE__)
# foreheads_path = current_path + "/data/foreheads.txt"
# eyes_path = current_path + "/data/eyes.txt"
# noses_path = current_path + "/data/noses.txt"
# mouths_path = current_path + "/data/mouths.txt" это почему-то не работает

foreheads_path = "./data/forehead.txt"
eyes_path = "./data/eyes.txt"
noses_path = "./data/nose.txt"
mouths_path ="./data/mouth.txt"

# Проверяем есть ли файл со лбами
if File.exist?(foreheads_path)
    # Если есть, открываем файл, явно указывая его кодировку UTF-8
    file = File.new(foreheads_path, "r:UTF-8")
  
    # И считываем все его строки в массив foreheads
    foreheads = file.readlines
    file.close # закрываем файл
  else
    # Если не найдет, сообщаем об этом пользователю и выходим с ошибкой
    abort "Лбы не найдены"
  end
  
  if File.exist?(eyes_path)
    file = File.new(eyes_path, "r:UTF-8")
    eyes = file.readlines
    file.close
  else
    abort "Глаза не найдены"
  end
  
  if File.exist?(noses_path)
    file = File.new(noses_path, "r:UTF-8")
    noses = file.readlines
    file.close
  else
    abort "Носы не найдены"
  end
  
  if File.exist?(mouths_path)
    file = File.new(mouths_path, "r:UTF-8")
    mouths = file.readlines
    file.close
  else
    abort "Рты не найдены"
  end

  puts foreheads.sample
  puts eyes.sample
  puts noses.sample
  puts mouths.sample