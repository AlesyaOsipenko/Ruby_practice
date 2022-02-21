
class Book
    def initialize(author, name, date_of_first_publication)
        @author = author
        @name = name
        @date_of_first_publication = date_of_first_publication.to_i
    end

    def author
        return @author
    end

    def name
        return @name
    end

    def date_of_first_publication
        return @date_of_first_publication
    end
end

user1_book = Book.new("Пушкин А.В", "Россия", 2001)
user2_book = Book.new("Петров Г.Г", "Бабочки", 1956)
user3_book = Book.new("Гоголь М.В", "Любовь", 1845)

[user1_book, user2_book, user3_book].each do |book|
    puts "Есть такая книга"
    puts "Автор: #{book.author}"
    puts "Название: #{book.name}"
    puts "Год первой публикации: #{book.date_of_first_publication}"
    puts
end
