# .bashrc DIY
# env status
echo "sourcing ~/.bashrc..."

# enter desktop when open terminal
echo "  enter ~/Desktop..."
if [[ $PWD == $(realpath ~) ]]; then
    cd ~/Desktop/
fi

# directory to be searched when cd
CDPATH=.:~:~/.Desktop
