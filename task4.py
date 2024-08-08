# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 22:17:44 2024

@author: waleed
"""

mydict={
        "emploee1":
        {
       "name":"waleed emad",
       "salary":10000,
       "department":"electronics",
       "id":20011963
        },
        "emploee2":
        {
       "name":"mohamed",
       "salary":1200,
       "department":"emara",
       "id":1880000
        },
        "emploee3":
        {
       "name":"jooooooo",
       "salary":9500,
       "department":"power",
       "id":1201010
        }
       }
print(mydict)
while 1:
    print('choose the process')
    print('1-add emploee')
    print('2-search for emploee')
    print('3-remove emploee')
    print('4-show all emploee')
    x=int(input())
    if x==1:
        print("Enter the name")
        name=input()
        print("Enter the salary")
        salary=input()
        print("Enter the department")
        department=input()
        print("Enter the id")
        ID=input()
        print("Enter the key")
        key=input()
        mydict.update({key : {
        "name":name,
        "salary":salary,
        "department":department,
        "id":ID
         }})
        print(mydict)
    elif x==2:
        print("Enter the name :")
        input_key=input()
        for i in mydict:
            if mydict[i]["name"]==input_key:
                print(mydict[i])
                break
    elif x==3:
        print("enter the name :")
        input_key=input()
        for i in mydict:
            if mydict[i]["name"]==input_key:
                mydict.pop(i)
                print(mydict)
                break
    elif x==4:
           print( mydict)
           
           break
        