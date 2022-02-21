class Chameleon
    def initialize(color)
        @color = color
    end

    def color 
        @color
    end

    def change_color(user_color)
        @color = user_color
    end

end

chameleon1 = Chameleon.new("red")
puts "Сейчас я #{chameleon1.color}"
chameleon1.change_color("green")
puts "Теперь я #{chameleon1.color}"
chameleon1.change_color("blue")
puts "Теперь я #{chameleon1.color}"

