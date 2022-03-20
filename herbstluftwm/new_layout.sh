#!/bin/bash

layout=$(whiptail --inputbox "What is your name?" 8 39 --title "What would you like to call this layout?" 3>&1 1>&2 2>&3)
                                                                        
exitstatus=$?
if [ $exitstatus = 0 ]; then
herbstclient dump > ~/.config/herbstluftwm/layouts/$layout
else
echo "User canceled input."
fi

#echo "(Exit status: $exitstatus)"

