time = Time.now

week_day = time.wday


if (week_day == 6 || week_day == 7 )
    puts "Сегодня выходной!"
else
    puts "Сегодня будний день, за работу!"   
end