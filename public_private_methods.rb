class Person

  attr_accessor :city, :state, :country, :first_name, :last_name, :gender

  @@total_instances = 0

  def initialize(fname, lname, gender, city="New Delhi", state="Delhi", country="India")
    @first_name = fname
    @last_name = lname
    @gender = gender
    @city = city
    @state = state
    @country = country
    @@total_instances += 1
  end

  # class methods can be created by using  ClassName.method_name or self.method_name
  def self.instance_count
    @@total_instances
  end

  def full_name
    salutation + " " + first_name + " " + last_name
  end

  def get_salutation
    salutation
  end

  private   # below this all the methods will be considered as private unless explicitly defined as public.

  def salutation
    if gender == "m"
      return "Mr."
    elsif gender == "f"
      return "Ms. "
    else
      return ""
    end
  end

  public

  def another_public_method
  end

end


p1 = Person.new("Sur", "Max", "m")

print "Firstname is: #{p1.first_name} \n"
print "Lastname is: #{p1.last_name} \n"
print "Fullname is: #{p1.full_name} \n"

print "Salutation is: #{p1.get_salutation} \n"

