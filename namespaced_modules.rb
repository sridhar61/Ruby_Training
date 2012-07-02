# namespaced modules

module Contact

  # callback method, it triggers whenever a class includes this module.
  def self.included(base)
    base.send(:include, PersonalInfo)
    base.send(:include, AddressInfo)
  end

  module PersonalInfo
    def name
      "David"
    end

    def phone
      "000-000-0000"
    end
  end

  module AddressInfo
    def city
      "New Delhi"
    end

    def state
      "Delhi"
    end
  end
end

# we need PersonalInfo and AddressInfo both included here
class Class1
  include Contact::PersonalInfo
  include Contact::AddressInfo
end

# we need PersonalInfo included here
class Class2
  include Contact::AddressInfo
end

# we need AddressInfo included here
class Class3
  include Contact::AddressInfo
end

# Q: how to include both modules PersonalInfo and AddressInfo using single statement.

# A: we need to include all the modules from the Contact module to be included inside Person class
class Person
  include Contact
end



# Q: explain the self.included method inside a Module.



