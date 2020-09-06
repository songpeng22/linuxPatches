#!/bin/bash
# json writer and parser
sudo DEBIAN_FRONTEND=noninteractive apt install jo jq -y -qq 
# ask if proxy is needed
echo -e "\n\n"
read -p "do you need proxy in this PC? (n/y) " -r
FILEPATH=`realpath $0`
FILEDIR=`dirname $FILEPATH`
echo "\$FILEDIR is $FILEDIR"
echo "\$PWD is $PWD"
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "you chose no , not use a proxy"
    jq -c '.proxy="n"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
    jq . $FILEDIR/../config.json
else
    echo "you chose yes , using a proxy"
    jq -c '.proxy="y"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
    jq . $FILEDIR/../config.json
fi

#echo 'do you need proxy in this PC: '
#PS3='please enter your choice:(n/y)'
#options=("Yes 1" "No 2" "Quit")
#select opt in "${options[@]}"
#do
#    case $opt in
#        "Yes 1|y")
#            echo "you chose yes , using a proxy"
#            jq -c '.proxy="y"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
#            jq . $FILEDIR/../config.json
#            break
#            ;;
#        "No 2|n")
#            echo "you chose no , not use a proxy"
#            jq -c '.proxy="n"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
#            jq . $FILEDIR/../config.json
#            break
#            ;;
#        "Quit")
#            exit 0
#            ;;
#        *) echo "invalid option $REPLY";;
#    esac
#done

