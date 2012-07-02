def color
color_value=yield
if color_value<=50
"RED"
elsif color_value<=100
"BLACK"
elsif color_value<=150
"YELLOW"
end
end
output =
 color do
 a=100
 b=100
 a+b
 end
print output

