#!/bin/bash
# json writer and parser
sudo apt install jo jq -y
# ask if proxy is needed
FILEPATH=`realpath $0`
FILEDIR=`dirname $FILEPATH`
echo "\$FILEDIR is $FILEDIR"
echo "\$PWD is $PWD"
echo 'do you need proxy in this PC: '
PS3='please enter your choice:'
options=("Yes 1" "No 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Yes 1")
            echo "you chose yes , using a proxy"
            jq -c '.proxy="y"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
            jq . $FILEDIR/../config.json
            break
            ;;
        "No 2")
            echo "you chose no , not use a proxy"
            jq -c '.proxy="n"' $FILEDIR/../config.json > tmp.$$.json && mv tmp.$$.json $FILEDIR/../config.json 
            jq . $FILEDIR/../config.json
            break
            ;;
        "Quit")
            exit 0
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
