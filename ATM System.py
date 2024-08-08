# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 19:32:09 2024

@author: waleed
"""
#_____________________import libraries for system usage in delay and delay_____________________#
import time
import sys

#_______________________________constant value intialization___________________________________#
delay_time = 1  # Delay in seconds
correct_pin = 1234;
avail_balance = 50000;
num_of_trys = 4;
one = 3;
continu = "y"
in_pin = 0;

while (one != 1):
    while (num_of_trys>0):
        in_pin = input ("Enter your 4 digit code please : ");
        while (len(in_pin) != 4 or not(in_pin.isdigit())): #check that pin is 4 digit numeric
            print("!!!!!!!!!Invalid choois!!!!!!!!!")
            in_pin = input ("Enter your 4 digit code please : ");
        in_pin = int(in_pin);
        if (correct_pin == in_pin):
            
            while (continu == "y" or continu == "Y" or continu == "1"):
                print("\n1- Withdraw \n2- Balance Inquiry \n3- Fast Cash \n4- Quit\n");
                chois = input("Choos one of options from (1->4): ");
                if(chois == "1"):
                    while (1):
                        print("Enter withdraw amount (multiple of 200): ");
                        withdraw_amount = int(input());
                        if( (withdraw_amount % 200) != 0):
                            print ("Invalid value\n");
                        else:
                            if (withdraw_amount<=avail_balance):
                                avail_balance = avail_balance - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                elif(chois == "2"):
                    print("Your balance is %d"%avail_balance);
                elif(chois == "3"):
                    print("1- 500$ \n2- 1000$ \n3- 5000$ \n4- 10000\n5- 50000");
                    choois_invalid = 1;
                    while (choois_invalid):
                        Fast_cash_valu = input("Enter a choise from (1->5): ");
                        if(Fast_cash_valu == "1"):
                            if (500<=avail_balance):
                                avail_balance = 500 - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                        elif(Fast_cash_valu == "2"):
                            if (1000<=avail_balance):
                                avail_balance = 1000 - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                        elif(Fast_cash_valu == "3"):
                            if (5000<=avail_balance):
                                avail_balance = 5000 - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                        elif(Fast_cash_valu == "4"):
                            if (10000<=avail_balance):
                                avail_balance = 10000 - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                        elif(Fast_cash_valu == "5"):
                            if (50000<=avail_balance):
                                avail_balance = 50000 - withdraw_amount;
                                print ("PRRR",end="");
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("R", end="")
                                time.sleep(delay_time)
                                print("OOCESSED");
                                break;
                            else:
                                print("Insufficient funds in your bank account");
                        else:
                            print("Invalid Choise");
                        
                elif(chois == "4"):
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
                    print ("!!!!INVALID CHOICE!!!!");
                
                continu = input("Do you want to make another operatin(y,Y,1): ");
            
        else:
            print("!!!!!!!!!  WRONG PIN  !!!!!!!!!");
            num_of_trys = num_of_trys - 1;
            print ("ONLY %d TRYS REMAIN PLEAS CONFIRM THAT CORRECT PIN IS ENTERED"%num_of_trys);
    num_of_trys = 3;    
    print ("You enter wrong pin more than 3 times pleas wait.",end="");
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
    one = one - 1;
print ("You are quit");


        
    