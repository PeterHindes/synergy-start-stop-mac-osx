#!/bin/bash

echo -n "Would you like to turn synergy on or off [n,f]:"
read -n1 ans
echo ""
if [ "$ans" == "n" ] ; then
  launchctl load /Library/LaunchAgents/com.symless.synergy.synergy-service.plist
  echo "Synergy is on."
elif [ "$ans" == "f" ] ; then
  launchctl unload /Library/LaunchAgents/com.symless.synergy.synergy-service.plist
  echo "Synergy is off."
fi
echo "Bye"
