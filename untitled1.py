# -*- coding: utf-8 -*-
"""
Created on Sun Jul 14 12:00:58 2024

@author: waleed
"""

int1 = 3;         int2 = 5;
#float1 = 3.0;     float2=5.0;
#str1 = "3";       str2 = "5";

int_res_mul =int( int1 * int2 );
float_res_mul =float( int1 * int1 );
str_res_mul =str( (str(int1)) * int(str(int1)) );

int_res_add =int( int1 + int2 );
float_res_add =float( int1 + int1 );
str_res_add =str( int(str(int1)) + int(str(int1)) );

print("int_res_mul = %d"%int_res_mul);
print("float_res_mul = %f"%float_res_mul);
print("str_res_mul = %s\n"%int_res_mul);

print("int_res_mul = %d"%int_res_add);
print("int_res_mul = %f"%float_res_add);
print("int_res_mul = %s"%str_res_add);
