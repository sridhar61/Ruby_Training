def hello
  print "hello"
end
#single paramter
def age_color(age=30)
  if age>25
  print" The color is :#{age} red\n"
  elsif 
  print"The color is :#{age} yellow\n"
  end
end
#multiple parameters
def personal_info_hash(info={})
print"The name is:#{info[:name]}\n"
print"The name is:#{info[:age]}\n"
end
#more paramaters
def contact_info_hash(info={})
print"the name is :#{info[:name]}\n"
print"The age is:#{info[:age]}\n"
print"The city is:#{info[:city]}\n"
end
