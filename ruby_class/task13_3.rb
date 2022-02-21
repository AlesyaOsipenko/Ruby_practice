require 'date'

class Address
    def initialize (territorial_entity, region, city, locality, street, building, flat)
      @territorial_entity = territorial_entity
      @region = region
      @city = city
      @locality = locality
      @street = street
      @building = building
      @flat = flat
    end
  
    def full_address
      result = []
  
      if !@street.to_s.empty?
        result << @street
      end
  
      if !@building.to_s.empty?
        result << "д. #{@building}"
      end
  
      if !@flat.to_s.empty?
       result << "кв. #{@flat}"
      end
  
      if !@locality.to_s.empty?
        result << @locality
      end
  
      if !@region.to_s.empty?
        result << @region
      end
  
      if !@territorial_entity.to_s.empty?
        result << @territorial_entity
      end
  
      return result.join(", ")
    end
  end

class Patient

  def initialize(name, patronymic_name, family_name, date_of_birth, address)
    @name = name
    @patronymic_name = patronymic_name
    @family_name = family_name
    @date_of_birth = Date.parse(date_of_birth)
    @address = address
  end

  def name
    return @name
  end

  def full_name
    return "#{@family_name} #{@name[0]}.#{@patronymic_name[0]}."
  end

  def age
    today = Date.today
    result = today.year - @date_of_birth.year - 1

    if (today.month > @date_of_birth.month) ||
      (today.month == @date_of_birth.month &&
       today.day >= @date_of_birth.day)
      result += 1
    end

    return result
  end

  def adult?
    return age >= 18
  end

  def address
    return @address
  end
end

address = Address.new("Московская обл.", "Раменский р-он", nil,
 "пос. Ильинский",  "ул. Рылеева", 12, nil)


 vadik = Patient.new("Вадим", "Аркадьевич", "Венедиктов", "14.09.1984", address)
 misha = Patient.new("Михаил", "Анатольевич", "Бутлицкий", "22.12.1982", address)

 puts "Пациент 1:"
 puts vadik.full_name
 puts "Возраст: #{vadik.age}"
 puts "Совершеннолетний: #{vadik.adult?}"
 puts "Адрес: #{vadik.address.full_address}"
 puts
 
 puts "Пациент 2:"
 puts misha.full_name
 puts "Возраст: #{misha.age}"
 puts "Совершеннолетний: #{misha.adult?}"
 puts "Адрес: #{misha.address.full_address}"
 puts
