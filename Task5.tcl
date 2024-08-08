set list {10 20 30 60 70 80 90}

proc replace_element {list_name {old_value 0} {new_value 0} } {
    set index [lsearch $list_name $old_value];
    set list [linsert $list_name $index $new_value];
    set list [lreplace $list_name $index $index $new_value];
}
puts "Old list value: $list";
puts "New list value: [replace_element $list 80 36]";
