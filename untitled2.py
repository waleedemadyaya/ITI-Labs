# -*- coding: utf-8 -*-
"""
Created on Sun Jul 14 12:15:50 2024

@author: waleed
"""
while (1):
    grade = int(input ("Enter your grade within (0:100) ::: "));

    if (grade>80 and grade <=100):
        print ("Your grade is :     A");
    elif (grade>75 and grade <=80):
        print ("Your grade is :     B");
    elif (grade>65 and grade <=70):
        print ("Your grade is :     C");
    elif (grade>60 and grade <=65):
        print ("Your grade is :     D");
    elif (grade>=0 and grade <=60):
        print ("Your grade is :     F");
    else :
        print ("Invalid grade pleas Enter a valid grad.......\n\n\n")
