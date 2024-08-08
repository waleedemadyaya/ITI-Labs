# -*- coding: utf-8 -*-
"""
Created on Sun Jul 14 12:24:30 2024

@author: waleed
"""

while (1):
    hourly_rat = int (input ("Enter the hourly rate payment : "));
    houres = int (input ("Enter the number of hours : "));
    if (houres>40):
        payment = 1.5 * hourly_rat * houres;
    else :
        payment = hourly_rat * houres;
        
    print ("Payment = %f "%payment);