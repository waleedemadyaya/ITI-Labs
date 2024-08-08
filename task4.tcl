
for {set i 4} {$i < 8} {incr i} {
  set temp  [expr $i**2];
  set Sqrt  [expr $temp**0.5];
  set Value_Square  [expr $temp**2];
  set Cubic  [expr $temp**3];
  puts "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#"
  puts "$Sqrt        $Value_Square      $Cubic"
  puts "\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\n"
}