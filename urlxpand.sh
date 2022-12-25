#!/bin/bash

URL=0
SELECTION=0

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

echo -ne "${RED}
 ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄            ▄       ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄  
▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌          ▐░▌     ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░░░░░░░░░▌ 
▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌           ▐░▌   ▐░▌ ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀█░▌
▐░▌       ▐░▌▐░▌       ▐░▌▐░▌            ▐░▌ ▐░▌  ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌▐░▌    ▐░▌▐░▌       ▐░▌
▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌             ▐░▐░▌   ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▐░▌   ▐░▌▐░▌       ▐░▌
▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌              ▐░▌    ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌▐░▌       ▐░▌
▐░▌       ▐░▌▐░█▀▀▀▀█░█▀▀ ▐░▌             ▐░▌░▌   ▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀█░▌▐░▌   ▐░▌ ▐░▌▐░▌       ▐░▌
▐░▌       ▐░▌▐░▌     ▐░▌  ▐░▌            ▐░▌ ▐░▌  ▐░▌          ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌▐░▌       ▐░▌
▐░█▄▄▄▄▄▄▄█░▌▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄▄▄  ▐░▌   ▐░▌ ▐░▌          ▐░▌       ▐░▌▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄█░▌
▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌     ▐░▌▐░▌          ▐░▌       ▐░▌▐░▌      ▐░░▌▐░░░░░░░░░░▌ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀       ▀  ▀            ▀         ▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀  
                                                                                                      
						Author: Abhijeet Kumar
					Github: https://github.com/wand3rlust
		     Inspired by Unshorten script of Rob VandenBrink(Twitter:@rvandenbrink)${RESET}
${GREEN}
Select any one of these:
Enter 1 to: Expand short to full URL
Enter 2 to: Expand short to full URL verbosely\n"${RESET}

read SELECTION

read -p "Enter the short URL with protocol (http:// or https://): " URL

if (( $SELECTION == 1 ))
then

eval curl -k -v -I $URL 2>&1 | grep -i "< location" | cut -d " " -f 3

elif (( $SELECTION == 2 ))
then

eval curl -k -v -I $URL

else
	echo "Invalid selection, please choose either 1 or 2."

fi
