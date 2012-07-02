# about Classes and Objects in Ruby.

# instance methods
# instance variables
# reader and writter methods
# class methods
# class variables
# public, private and protected methods
# inheritance
# Modules
# Namespaces
# Mixins


class Person

  attr_reader :country  # ruby's automated way of defining reader method
  attr_writer :country # ruby's automated way of defining writer method

  attr_accessor :city # defining reader and the writer method in one go.

  # constructor or initalizer method.
  def initialize(name_val, age_val)
    @name = name_val
    @age = age_val
    @country = "India"
    @city = "New Delhi"
  end

  def set_name(name_val)
    @name = name_val # writing the instance variable "@name"
  end

=begin
  def country
    @country
  end

  the above code defining the method country can just be automated by writing
  attr_reader :country
=end


  # manually writing the reader and writer methods
  def name
    @name  # reading the instance variable "@name"
  end

  def name=(name_val)
    @name = name_val # writing the instance variable "@name"
  end

  def age
    @age
  end
end

p1 = Person.new("David", 40)

print "The name is: #{p1.name} \n"
print "The age is: #{p1.age} \n"

# we need to alter the name

print "................. changing the name ................... \n"
p1.name = "Dave, David"
# p1.set_name("Dave")
print "The changed name is: #{p1.name} \n"

print "The country is: #{p1.country} \n"


print "................. changing the country ................... \n"
p1.country = "US"

print "The changed country is: #{p1.country} \n"


print "The city is: #{p1.city} \n"


print "................. changing the city ................... \n"
p1.city = "Mumbai"

print "The changed city is: #{p1.city} \n"



