if (Gem.win_platform?)
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
# Нужно купить:
# ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]

# Что купили:
# картошка

# Нужно еще купить:
# ["масло", "молоко", "хлопья", "курица", "помидоры"]
product = nil
products = ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]
puts "Нужно купить: #{products.to_s}"

while products.any? do
    puts "Что купили ?"
    product = gets.chomp
    if products.include?(product)
        products.delete(product)
    else 
        puts "Такого продукта в списке нет"
    end

    puts "Нужно еще купить: #{products.to_s}" if products.any?
end

puts "Вы все купили"