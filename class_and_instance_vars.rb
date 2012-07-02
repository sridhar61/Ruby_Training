# demo class and instance variables

class Person

  # CITY = "New Delhi"

  @@country = "India"

  def initialize(age_val)
    @age = age_val
  end

  def print_age
    print(object_id.to_s + ", your age is: " + @age.to_s + "\n")
  end

  def print_country
    print(object_id.to_s + ", your country is: " + @@country + "\n")
  end

  def print_city
    print(object_id.to_s + ", your city is: " + CITY + "\n")
  end
end


class Person


  CITY = "Mumbai" unless defined?(CITY)

end



p1 = Person.new(40)
p1.print_age
p1.print_country
p1.print_city

p2 = Person.new(50)
p2.print_age
p2.print_country
p2.print_city

