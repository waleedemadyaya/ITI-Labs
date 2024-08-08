# -*- coding: utf-8 -*-
"""
Created on Sun Jul 14 12:30:23 2024

@author: waleed
"""

GPA = float(input("Enter GPA pleas : "));
Master = input ("Have Master?(y/n):    ");
MBA = input ("Have MBA?(y/n):    ");
Exprience = float (input("Enter years of experience: "));

if (GPA>3.8):
    if (Master == 'y'):
        if(MBA == 'y'):
                if(Exprience > 15):
                    print("Manger");
                elif(15 >= Exprience > 10):
                    print("Staff Senior");
                elif(10 >= Exprience > 5):
                    print("Senior");
                elif(10 >= Exprience > 3):
                    print("Team Leader Senior");
                elif(10 >= Exprience > 1):
                    print("Standard");
                elif(10 >= Exprience < 1):
                    print("Junior");
                else:
                    print("Inavalid Experince Year choise for classification");
                
        elif(MBA == 'n'):
                if(15 >= Exprience > 10):
                    print("Staff Senior");
                elif(10 >= Exprience > 5):
                    print("Senior");
                elif(10 >= Exprience > 3):
                    print("Team Leader Senior");
                elif(10 >= Exprience > 1):
                    print("Standard");
                elif(10 >= Exprience < 1):
                    print("Junior");
                else:
                    print("Inavalid Experince Year choise for classification");
            
        else:
            print("Inavalid MBA choise for classification");
    
    elif (Master == 'n'):
        if(10 >= Exprience > 5):
            print("Senior");
        elif(10 >= Exprience > 3):
            print("Team Leader Senior");
        elif(10 >= Exprience > 1):
            print("Standard");
        elif(10 >= Exprience < 1):
            print("Junior");
        else:
            print("Inavalid Experince Year choise for classification");
        
        
    else:
        print("Inavalid Mastar choise for classification");
    
elif (GPA>3.6):
    if (Master == 'y'):
                if(15 >= Exprience > 10):
                    print("Staff Senior");
                elif(10 >= Exprience > 5):
                    print("Senior");
                elif(10 >= Exprience > 3):
                    print("Team Leader Senior");
                elif(Exprience > 1):
                    print("Standard");
                elif(Exprience < 1):
                    print("Junior");
                else:
                    print("Inavalid Experince Year choise for classification");
       
    
    elif (Master == 'n'):
                if(10 >= Exprience > 5):
                    print("Senior");
                elif(10 >= Exprience > 3):
                    print("Team Leader Senior");
                elif(10 >= Exprience > 1):
                    print("Standard");
                elif(10 >= Exprience < 1):
                    print("Junior");
                else:
                    print("Inavalid Experince Year choise for classification");
        
        
    else:
                print("Inavalid Mastar choise for classification");
    
    
    
elif (GPA>3.4):
    if(10 >= Exprience > 3):
        print("Team Leader Senior");
    elif(Exprience > 1):
        print("Standard");
    elif(Exprience < 1):
        print("Junior");
    else:
        print("Inavalid Experince Year choise for classification");

elif (GPA>3):
    if(Exprience > 1):
        print("Standard");
    elif(Exprience < 1):
        print("Junior");
    else:
        print("Inavalid Experince Year choise for classification");
elif (GPA>2.5):
    if(Exprience < 1):
        print("Junior");
    else:
        print("Inavalid Experince Year choise for classification");
else :
    print("Inavalid GPA for classification");
    