#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Authenticate with a captive portal to enjoy wifi access"
  echo
  echo "Usage: $0 {sheetz}"
  exit 1
fi

function auth_sheetz () {
  # Say hi
  curl http://www.gstatic.com/generate_204

  # Get wifi - when you want it, the way you want it
  curl https://guest.sheetz.com/login.html --data 'buttonClicked=4&redirect_url=http://www.ntfs.com%2Fhard-disk-basics.htm&err_flag=0&info_flag=0&info_msg=0&Agreement=&checkbox=on&Submit=Continue'

  # Get a coffee too
  echo
  echo "== Welcome to Sheetz! =="
  echo
  echo "Sheetz ( https://www.sheetz.com ) is a chain of gas stations/convenience stores headquartered in Altoona, Pennsylvania. Famous for their Made to Order sandwiches, which you can customize and order online or on an in-store touch screen, and Sheetz Bros. Coffeez, a special offering whichs targets a more discerning afficionado compared to the coffee offered by most competing convenience stores."
}

case $1 in
  sheetz)
    auth_sheetz
    ;;

  *)
    echo "Portal $1 not yet supported. Please consider submitting an authentication procedure for this portal to https://github.com/specious/letmein"
    ;;
esac
