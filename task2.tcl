set varName1 99
set varName2 44



if {$varName1>$varName2} {
puts "$varName1 > $varName2"} elseif {
$varName1<$varName2 } {puts "$varName1 < $varName2"} elseif {
$varName1==$varName2 } {puts "$varName1 = $varName2"} else {puts "no relation"}