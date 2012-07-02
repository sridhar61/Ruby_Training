class Person

  def initialize
    @age = 50
  end

  def set_age
    print("The earlier age was: " + @age.to_s + "\n")
    print("Setting the age of the person.....\n")
    @age = 40
  end

  def name
    "Ruby " + @age.to_s
  end

  def address
    "Ruby Street and age is : " + @age.to_s
  end
end

p1 = Person.new

p1.set_age

print("The name is: " + p1.name + "\n")

print(p1.address)