
# Demonstrating Meta-Programming. Adding new code inside the existing code on the fly.

# how to add a new functionality in Ruby to define class-variables and class-methods just like attr_accessor


class Class

  def a_new_method
    print "Testing a new method in Class"
  end

end


class Person

  a_new_method


# automate the below functionality with one line function like attr_accessor
=begin
  def self.total_instances
    @@total_instances
  end

  def self.total_instances=(val)
    @@total_instances = val
  end
=end

  def Person.cattr_accessor(method_name)
    # print "Calling the cattr_accessor for creating new class methods on the go. \n"
    class_eval do
      define_method(method_name.to_s) do
        class_variable_get(method_name.to_s)
      end
    end
  end

  cattr_accessor :instances_count
  cattr_accessor :country

end


# Q1: the above code inside the method Person.cattr_accessor(method_name) is creating new instance-methods
# correct the code and make it such that it should create new class-methods

# Q2: we have here only reader method created using "define_method(method_name.to_s)" .. along with this
# also write another method which will create writer methods.




