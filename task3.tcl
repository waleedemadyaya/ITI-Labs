set Excellent 5
set Very_Good 4
set Good 3
set Up_Normal 2
set Normal 1 
set Bad 0

set employee_grade 4

if {$employee_grade == 5} {
puts "Excellent"} elseif {
$employee_grade == 4 } {puts "Very_Good"} elseif {
$employee_grade == 3 } {puts "Good"} elseif {
$employee_grade == 2 } {puts "Up_Normal"} elseif {
$employee_grade == 1 } {puts "Normal"} elseif {
$employee_grade == 0 } {puts "Bad"} else {puts "Invalid grad"}



switch $employee_grade {
5 {puts "Excellent"}
4 {puts "Very_Good"}
3 {puts "Good"}
2 {puts "Up_Normal"}
1 {puts "Normal"}
0 {puts "Bad"}
default {puts "Invalid Grad"} 
}


######################################### BY CHARACTERS #########################################
set Excellent A
set Very_Good B
set Good C
set Up_Normal D
set Normal EF 
set Bad G

set employee_grade "abCdEfGhE"
set stringLength [string length $employee_grade]
puts ("$stringLength")

for {set i 0} {$i < $stringLength} {incr i} {
    if {[string index $employee_grade $i] == "a" | [string index $employee_grade $i] == "A"} {
    puts "Excellent"} elseif {
    [string index $employee_grade $i] == "b" | [string index $employee_grade $i] == "B" } {puts "Very_Good"} elseif {
    [string index $employee_grade $i] == "c" | [string index $employee_grade $i] == "C" } {puts "Good"} elseif {
    [string index $employee_grade $i] == "d" | [string index $employee_grade $i] == "D" } {puts "Up_Normal"} elseif {
    [string index $employee_grade $i] == "e" | [string index $employee_grade $i] == "E" } {puts "Normal"} elseif {
    [string index $employee_grade $i] == "f" | [string index $employee_grade $i] == "F" } {puts "Normal"} elseif {
    [string index $employee_grade $i] == "g" | [string index $employee_grade $i] == "G" } {puts "Bad"} else {puts "Invalid grad"}


}


######################################### BY CHARACTERS #########################################
set Excellent A
set Very_Good B
set Good C
set Up_Normal D
set Normal EF 
set Bad G

set employee_grade "abCdEfGhE"
set stringLength [string length $employee_grade]
puts ("$stringLength")

for {set i 0} {$i < $stringLength} {incr i} {

switch [string index $employee_grade $i] {
A {puts "Excellent"}
B {puts "Very_Good"}
C {puts "Good"}
D {puts "Up_Normal"}
E {puts "Normal"}
F {puts "Normal"}
G {puts "Bad"}
a {puts "Excellent"}
b {puts "Very_Good"}
c {puts "Good"}
d {puts "Up_Normal"}
e {puts "Normal"}
f {puts "Normal"}
g {puts "Bad"}
default {puts "Invalid Grad"}
}

}


