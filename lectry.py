# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 09:50:21 2024

@author: waleed emad yaya
"""
my_file = open("file_exersice.txt",'r');

print(my_file.read());
print("\n\n\n");

my_file.close();
my_file = open("file_exersice.txt",'r');
print(my_file.readline());
print("\n\n\n");


my_file.close();
my_file = open("file_exersice.txt",'r');
print(my_file.readline());
print(my_file.readline());
print("\n\n\n");

my_file.close();
my_file = open("file_exersice.txt",'r');
print(my_file.readline(10));
print("\n\n\n");

my_file.close();
my_file = open("file_exersice.txt",'r');
for line in my_file :
    print (line);
print("\n\n\n");

print("second method");
my_file.close();
my_file = open("file_exersice.txt",'r');
print (my_file.readlines());
print("\n\n\n");


my_file.close();
my_file = open("file_exersice.txt",'r');
for line in my_file :
    var = line.split();
    print (var);
    
print("\n\n\n");
