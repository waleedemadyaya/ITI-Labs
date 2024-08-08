proc add_sub_mul_div { a {b 0} } {
puts "a+b=[expr $a+$b]"
puts "a-b=[expr $a-$b]"
puts "a*b=[expr $a*$b]"
return [expr $a/$b] 
}

puts "[add_sub_mul_div 30 6]";  #passing a list is wrong expression
                                #comment on the same cammand line must be separated by semicolon ;;;;;;;;