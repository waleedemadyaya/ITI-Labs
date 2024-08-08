
set i 1
set val 7


while {1} {
  if {$i == 4} {
    incr i
    continue
    
  }
  if {$i == 11} {break}
  puts "[expr $val*$i]"
  incr i
  
}
