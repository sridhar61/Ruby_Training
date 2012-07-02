

# creating a simple proc object (lambda) using a block

@myproc = Proc.new{print "Hello there, I am inside a proc"}
# or
@myproc = lambda{print "Hello there, I am inside a proc"}
# or
@myproc = proc{print "Hello there, I am inside a proc"}
# Proc.new or lambda or proc any of the three can be used to create a new Proc object.


def contact_info(info={})
  print "Name of the Person is: #{info[:name]} \n"
  print "Age of the Person is: #{info[:age]} \n"
  print "City of the Person is: #{info[:city]} \n"
end


# lambda with parameters
@cinfo = lambda{|name| print "Name of the Person is: #{name} \n"}
@cinfo.call("Dave")

# calling existing functions inside lambda
@cinfo = lambda{|options| contact_info(options)}



# Example of passing a block to a function and making use of the outpyt by yielding

def color
  # Red: if the output of block is <= 100
  # Green: if the output of block is > 100 and <= 500
  # Blue: if the output of block is > 500 and <= 1000
  # Black: if the output of block is > 1000
  color_value = yield

  if color_value <= 100 and color_value >= 0
    "RED"
  elsif color_value > 100 and color_value <= 500
    "GREEN"
  elsif color_value > 500 and color_value <= 1000
    "BLUE"
  elsif color_value > 1000
    "BLACK"
  else
    "NO COLOR FOUND"
  end
end

# passing the block to the method

output =
    color do
      a = 100
      b = 700
      a + b
    end
print output +" \n"



# passing blocks and receiving them as variables and making use of it as proc objects

def color_info(color="red", intensity="high", &block)
  print "Color Info:  color is: #{color} and intensity is: #{intensity} \n"
  p block.class
  block.call # this will call the prob object saved in block
  yield
end

color_info do
  puts "Block received as parameter"
end


# block with their own parameters..
# Note: the parameters to te block when passed to a function are optional
def testing_block(&block)
  block.call
  yield 20
end

testing_block do |length|
  puts "the length is: #{length} \n"
end



