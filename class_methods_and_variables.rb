class Home

  attr_accessor :city, :state, :country

  @@total_instances = 0

  def initialize(city="New Delhi", state="Delhi", country="India")
    @city = city
    @state = state
    @country = country
    @@total_instances += 1
  end

  # class methods can be created by using  ClassName.method_name or self.method_name
  def self.instance_count
    @@total_instances
  end

end



# Q:  we need to keep track of how many Home instances have been created with the class Home.

print "Total instances of Home are: #{Home.instance_count} \n"

h1 = Home.new

100.times{Home.new}

print "Update1: Total instances of Home are: #{Home.instance_count} \n"
