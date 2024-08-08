set input_file [open "Input_File.txt" r];
set file_handled [open "File_Handled.txt" w];
set index 1

set input_file_data [read $input_file];
set input_file_lines [split $input_file_data  ];
foreach line $input_file_lines {
    if {[regexp {Employee} $line c]} {
        puts $file_handled "******************Employee$index******************"
        incr index;
    }
    if {[regexp {Name} $line c]} {
        puts $file_handled $line
    }
    if {[regexp {Grade} $line c]} {
        puts $file_handled $line
    }
    if {[regexp {School} $line c]} {
        puts $file_handled $line
    }
    if {[regexp {University} $line c]} {
        puts $file_handled $line
    }
    if {[regexp {Current_Salary} $line c]} {
        puts $file_handled $line
    }
    
}
close $file_handled


set input_file [open "File_Handled.txt" r];
set file_handled [open "File_Handled_2.txt" w];
set index 1

set employee {}
set name {}
set school {}
set grade {}
set university {}
set curr_sall {}

set input_file_data [read $input_file];
set input_file_lines [split $input_file_data  ];
#puts $input_file_lines

foreach line $input_file_lines {
    if {[regexp {Employee} $line c]} {
        lappend employee $line
        incr index
    }
    if {[regexp {Name} $line c]} {
        lappend name $line
    }
    if {[regexp {Grade} $line c]} {
        lappend grade $line
    }
    if {[regexp {School} $line c]} {
        lappend school $line
    }
    if {[regexp {University} $line c]} {
        lappend university $line
    }
    if {[regexp {Current_Salary} $line c]} {
        lappend curr_sall $line
    }
}

#You can add and remove any data from the source file by commenting the unwanted line iside for loop

for {set i 0} {$i<$index} {incr i} {
    puts $file_handled [lindex $employee $i]
    puts $file_handled [lindex $name $i]
    puts $file_handled [lindex $grade $i]
    puts $file_handled [lindex $curr_sall $i]
    #puts $file_handled [lindex $school $i]
    #puts $file_handled [lindex $university $i]
}

close $file_handled