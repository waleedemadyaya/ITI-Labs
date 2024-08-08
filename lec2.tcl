set var {orange blue red green pink}
puts $var
set newelem babyblu
lappend var $newelem
puts $var
set var [lreplace $var 5 5 haha]
puts $var
set var [lreplace $var 5 5  ]
puts $var
