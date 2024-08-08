set list {1 2 3 4 5 6 7 8 9 10 11 12 13 45 46 17 -5 -8 -9}

foreach i $list {
  if {$i<11 & $i>-1} {
    set temp [expr $i*$i]
    puts "$temp"
  }
}
