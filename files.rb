def create_file(filename, data)
  File.open("./#{filename}","w"){|file| file.write(data)}
end
create_file("first_created.txt", "Hi there.\n how are you doing?\n")

