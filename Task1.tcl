set str1 "Samy"
set str2 "Sayed"
set cmp_val [string compar $str1 $str2];
set cmp_val_2 [string match $str1 $str2];
switch $cmp_val {
-1 { puts "$str2 < $str1" }
0  { puts "$str2 = $str1" }
1  { puts "$str2 > $str1" }
}

switch $cmp_val_2 {
0  { puts "$str2 != $str1" }
1  { puts "$str2 = $str1" }
}

