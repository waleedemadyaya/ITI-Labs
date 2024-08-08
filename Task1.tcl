set int1 5
set int2 2
set float1 5.0
set float2 10.0 

puts "int1 + int2 = [expr $int1 + $int2]"
puts "int1 - int2 = [expr $int1 - $int2]"
puts "int1 * int2 = [expr $int1 * $int2]"
puts "int1 to the power int2 = [expr $int1 ** $int2]"
puts "int1 / int2 = [expr $int1 / $int2]"
puts "int1 % int2 = [expr $int1 % $int2]"
puts "int1 >> int2 = [expr $int1 >> $int2]"
puts "int1 << int2 = [expr $int1 >> $int2]"

puts "float1 + float2 = [expr $float1 + $float2]"
puts "float1 - float2 = [expr $float1 - $float2]"
puts "float1 * float2 = [expr $float1 * $float2]"
puts "float1 to the power float2 = [expr $float1 ** $float2]"
puts "float1 / float2 = [expr $float1 / $float2]"

#############################################################
#puts "float1 % float2 = [expr $float1 % $float2]"
#puts "float1 >> float2 = [expr $float1 >> $float2]"
#puts "float1 << float2 = [expr $float1 >> $float2]"
#shifr operations can't be done on floating point numbers  #
############################################################