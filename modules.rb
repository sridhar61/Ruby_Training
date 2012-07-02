# write a module so that just including the module, we will get 2 instance and 2 class methods available like below.
=begin
class Person
  # class methods
  def self.city
  end

  def self.state
  end


  # instances methods
  def name
  end

  def phone
  end
end
=end

module Contact

  def self.included(base)
    print "Including the module Contact in class #{base.to_s} \n"
    base.send(:include, InstanceMethods)
    base.send(:extend, ClassMethods)
  end

  # name can be anything, InstanceMethods is just for making it easily understandable that it includes all
  # instance methods
  module InstanceMethods

    def self.included(base)
      print "Including the module Contact::InstanceMethods in class #{base.to_s} \n"
    end

    def person_name
      "The Person Name Method"
    end

    def phone
      "The Phone Method"
    end
  end

  # name can be anything,ClassMethods is just for making it easily understandable that it includes all
  # class methods
  module ClassMethods

    def self.extended(base)
      print "Extending the module Contact::ClassMethods in class #{base.to_s} \n"
    end

    def city
      "The City Method"
    end

    def state
      "The State Method"
    end
  end
end


# we want all the SchoolMethods available as class-methods in Person by making use of extend
module School

  def self.extended(base)
    print "Extending the module School in class #{base.to_s} \n"
    base.send(:extend, SchoolMethods)
  end

  module SchoolMethods

    def self.extended(base)
      print "Extending the module School::SchoolMethods in class #{base.to_s} \n"
    end

    def school_name
    end
  end

end



class Person
  include Contact
  extend School
end










