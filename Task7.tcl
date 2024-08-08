set numbers {0 0 1 1 2 2 3 3}


set length [string length $numbers]

set new_list_1 {}
set new_string ""
for {set var 0} {$var < $length} {incr var 1} {
    set temp [lindex $numbers $var]
    append new_list_1 $temp
    if {!($temp == " ")} {
        append new_string $temp
    }
    

}
set new_list_2 [split $new_string  ]
puts $new_list_1
puts $new_list_2

##Another way may be using lmap (list map into the cosisting lists)