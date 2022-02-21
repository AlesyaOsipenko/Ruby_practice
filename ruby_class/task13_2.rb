
class Address
  def initialize(street, house, flat, region, district, locality)
   @street = street
   @house = house
   @flat =  flat
   @district = district
   @region = region
   @locality = locality
  end

  def full_adress
    return "#{@street}, #{@house}, #{@flat}, #{@district}, #{@region}, #{@locality}"
  end

end

user1_address = Address.new("Головацкого", "116", "23", "Гомельская", "Центральный район", "Гомель")
user2_address = Address.new("Головацкого", "116", "02", "Гомельская", "Центральный район", "Гомель")

puts "Полный адрес Пациента 1: #{user1_address.full_adress}"
puts "Полный адрес Пациента 2: #{user2_address.full_adress}"
