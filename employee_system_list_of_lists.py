# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 19:32:09 2024

@author: waleed
"""
#_____________________import libraries for system usage in delay and delay_____________________#
import time
import sys
delay_time = 1  # Delay in seconds

employees_list =[[ "waleed emad yahya" , "1000$" , "Digital IC Design" , "20012197" ],
                 [ "moamed emad yahya" , "9000$" , "Analogg IC Design" , "20012198" ],
                 [ "ahmeed emad yahya" , "8000$" , "Digital IC Verifi" , "20012199" ],
                 [ "yousef emad yahya" , "7000$" , "Digital IC Fabric" , "20012200" ],
                 [ "nourrr emad yahya" , "4000$" , "Digital IC Valida" , "20012201" ],
                 [ "manooo emad yahya" , "3000$" , "Digital IC Cleann" , "20012202" ],
                 [ "ahmeed emad yahya" , "2000$" , "Digital IC uuuuuu" , "20012203" ],
                ]

while(True):
    print("1- First Process add Employee( name , Salary , Departement, ID)"); 
    print("2- Search on Empolyee by Name"); 
    print("3- Delete Employee");
    print("4- Show all Employe");
    print("5- Quit\n");
    choise = input ("Choose a number from 1 to 5: ");
    if (choise == "1"):
        name = input("Enter employee name please : ");
        salary = input ("Enter employee salary pleas : ");
        departement = input ("Enter employee department pleas : ");
        ID = input ("Enter employee ID please : ");
        new_employee = [name , salary , departement , ID];
        employees_list.append(new_employee);
    elif (choise == "2"):
        num_of_employee = len(employees_list) - 1;
        search_name = input("Enter employee name : ");
        founed = "n";
        while (num_of_employee>=0):
            if (search_name in employees_list[num_of_employee]):
                print("     Name               Salary            Departement            ID");
                print(employees_list[num_of_employee]);
                founed = "y";
            num_of_employee = num_of_employee - 1;
        
        if (founed == "n"):
            print ("No such employee");
        
    elif (choise == "3"):
        num_of_employee = len(employees_list) - 1;
        search_name = input("Enter employee name to be removed : ");
        founed = "n";
        while (num_of_employee>=0):
            if (search_name in employees_list[num_of_employee]):
                print("     Name               Salary            Departement            ID");
                print(employees_list[num_of_employee]);
                employees_list.remove(employees_list[num_of_employee]);
                founed = "y";
            num_of_employee = num_of_employee - 1;
        
        if (founed == "n"):
            print ("No such employee");
        else:
            print ("Employee was deleted");
        
    elif (choise == "4"):
        print("     Name               Salary            Departement            ID");
        print(employees_list);
        
    elif (choise == "5"):
        print ("Quit.",end="");
        time.sleep(delay_time)
        print(".", end="")
        time.sleep(delay_time)
        print(".", end="")
        time.sleep(delay_time)
        print(".", end="")
        time.sleep(delay_time)
        print(".", end="")
        time.sleep(delay_time)
        print(".", end="")
        time.sleep(delay_time)
        print(".");
        sys.exit(0);
        
    else:
        print("#####################INVALID CHOICE YA GHALIIII#####################");
    
    
