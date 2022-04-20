#!/usr/bin/env sh

clear
echo """

██╗░░██╗░░██╗██╗██╗░░██╗████████╗░█████╗░░█████╗░██╗░░░░░░██████╗
██║░░██║░██╔╝██║╚██╗██╔╝╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██╔════╝
███████║██╔╝░██║░╚███╔╝░░░░██║░░░██║░░██║██║░░██║██║░░░░░╚█████╗░
██╔══██║███████║░██╔██╗░░░░██║░░░██║░░██║██║░░██║██║░░░░░░╚═══██╗
██║░░██║╚════██║██╔╝╚██╗░░░██║░░░╚█████╔╝╚█████╔╝███████╗██████╔╝
╚═╝░░╚═╝░░░░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░░╚════╝░╚══════╝╚═════╝░

by Vp (https://github.com/herravp)
"""

echo Installing dependencies in 3 seconds...
sleep 3

pip3 install -r requirements.txt

sleep 1
echo Making H4XTools into a linux command...
chmod +x h4xtools.py
pyinstaller h4xtools.py --onefile -F
sleep 1
cd dist
chmod +x h4xtools
sudo mv h4xtools /usr/local/bin/
cd -
rm h4xtools.spec
rm build -r
rm dist -r
echo Done! Type h4xtools in your terminal to start! OR Do you want to start H4XTools now? [y/n]
read answer
if [ "$answer" = "y" ]; then
    h4xtools
fi