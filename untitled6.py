# -*- coding: utf-8 -*-
"""
Created on Sun Jul 14 13:09:34 2024

@author: waleed
"""
summ = 0;
elements = 0;
for i in[10 , 20 , 30 , 40 , 50 , 60]:
    elements=elements+1;
    summ = summ + i;
avg = float(summ) / float(elements);
print("Average is %f"%avg);
print("Aproximated Average is %d"%(int(avg)));
    
    