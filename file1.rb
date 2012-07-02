#f=File.open("./file1.txt","w")
#f.puts("hi")

creation_time=File.atime("./file1.txt")
print " The creation time is :#{creation_time} \n"
print "The creation time is #{creation_time.class.name} type object\n"


File.basename("./file1.txt")