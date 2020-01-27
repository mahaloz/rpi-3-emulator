#!/bin/bash

# Cause im lazy. This is a setup script. (for linux users only)

# Check for qemu install
echo "Update?"; read resp
if [ "$resp" == "y" ]; then
        sudo apt update
fi
# Unconditional install/check
sudo apt-get install qemu -y

# Ask the user if its already downloaded
echo "Wget the raspbian image?"
read resp
if [ "$resp" == "y" ]; then
        wget https://downloads.raspberrypi.org/raspbian_lite_latest
        mv raspbian_lite_latest raspbian_lite_latest.zip
fi

# Run the unzip
unzip *raspbian_lite_latest.zip ; rm *raspbian_lite_latest.zip ; mv *-raspbian-buster-lite.img raspbian-buster-lite.img

# Double make sure execution is set 
chmod +x run_emulator.sh

# Ask user if they want to start
echo "Start emulator with Raspbian? [y/n]"
read resp

if [ "$resp" == "y" ]; then
        ./run_emulator.sh
else
        echo -e "If you want to start later, run \e[32m./run_emulator.sh\e[39m"
fi
