#@myproc= lambda{print"hi you there"}

def contact_info(info={})
print"the name is:#{info[:name]}\n"
print"the age is :#{info[:age]}\n"
end
=begin
@cinfo= lambda{|name|print"the name is :#{name}\n"}
@cinfo.call("sidhu")
=end

@cinfo= lambda{|options| contact_info(options)}
