# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 13:24:19 2024

@author: waleed
"""

corr_word = "waleedemad" ;
word_to_view = "------";
num_of_trys = 6 ;

###############################################################################
def valid_char(char): #check the validity of char
  if len(char) != 1:
    return False
  # Check if the character is lowercase (a-z)
  return char.islower() or char.isupper()
###############################################################################


###############################################################################
def extract_unique_chars(word):
  """Extracts unique characters from a word. """
  if not isinstance(word, str):
    return ""  # Handle non-string input

  seen = set()
  unique_chars = ""
  for char in word:
    if char.isalpha() and char not in seen:  # Check for alphabet and uniqueness
      seen.add(char)
      unique_chars += char
  return unique_chars
###############################################################################

# ###############################################################################
# def remove_char_from_strings(char_to_remove, my_list):
#   """  Removes a character from each string in the list"""
#   for i in range(len(my_list)):
#     my_list[i] = my_list[i].replace(char_to_remove, '');
# ###############################################################################


word_char = extract_unique_chars(corr_word);
correct_chars = "";
while ( (num_of_trys > 0) and (len(word_char) != 0) ):
    in_char = input("Enter character pleas(NO SPECIAL CHARACTERS): ");
    if ( not( valid_char(in_char) ) ):
        print("Invalid chatacter or not single input");
    else:
        if (in_char.isupper()):
            in_char = in_char.lower();
            
        if (in_char in corr_word):
            temp_char = in_char;
            word_char = word_char.replace(temp_char, '');
            correct_chars= correct_chars + temp_char;
            word_to_view = "";
            for i in corr_word:
                    if (i in correct_chars):
                        word_to_view = word_to_view+i;
                    else:
                            word_to_view = word_to_view+'-';
        else:
            num_of_trys = num_of_trys - 1 ;
            print("!!WRONG CHARACTER TRY AGAIN!!");
            print("!!REMAINING TRYS = %d!!"%num_of_trys);
            
        print(word_to_view);
                

if (num_of_trys == 0):
    print (" *************************The correct word is %s *************************"%corr_word);
    print ("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!YOU ARE HUNGED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
else:
    print (" *************************The correct word is %s *************************"%corr_word);
    print ("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! WINNER WINNER !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
    
    
        
    