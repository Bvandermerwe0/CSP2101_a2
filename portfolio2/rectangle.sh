#!/bin/bash

#Author: Bianca Van Der Merwe
#Student ID: 10389192


if ! [ -f rectangle_f.txt ] ; then              #This is to verify if there is any files present with this name
  rm rectangle_f.txt                            #If thereis a file with this name, it removes it (start with a clean slate)
   exit 0

else
sed   -e '1d' \
      -e 's/^/Name:\t/' \
      -e 's/,/\tHeight: /1' \
      -e 's/,/\tWidth: /1' \
      -e 's/,/\tArea: /1' \
      -e 's/,/\tColour: /1' rectangle.txt > rectangle_f.txt
            #SED '1d' is used to delete the first header line of the txt file
            # SED's second command is to prefix each line with "Name: "
            #SED's second command, it looks for the first instance of a ',' and replaces it with a tabbed height:
            #SED's third command, after the first ',' is replaces, it is looking for the first next instance and replacing it withh a tabbed width
            #SED's fourth command, after the second ',' was replaced, it is looking for the next first instnce and replacing it with a tabbed area
            #SED'a fith command,  after the  third ',' was replaced, the next first instance is to repalce the ',' with a tabbed colou
            #after this the oringinal text is re creates to a new file with a slightly different name,


      cat rectangle_f.txt  #This contactenate file and allows the standard to look the way the file looks, also to withold the most up to date information on the file,

fi          #closing the if statement

printf "\n\n"            # This displays the file on a new line underneath the user input

