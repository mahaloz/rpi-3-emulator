# Raspberry Pi 3 QEMU Emulator
Raspberry Pi 3 QEMU Emulator for simple IO Inferface.
Presented by mahaloz. Star-ware: Star if this was helpful. 

## Installation
Assuming you are running this on the correct operating system (Ubuntu 18.04
LTS), you should be able to install QEMU easily with:

`sudo apt-get update ; sudo apt-get install qemu -y`

If you are for some reason on MacOS:

`brew install qemu`

Once you have QEMU installed, you need to download a Linux OS image. This repo
supports Rasbian Buster Lite -- for simple bash access. You can find the zipped
image [here](https://downloads.raspberrypi.org/raspbian_lite_latest).

Place the zipped package in this directory and run:

```bash
unzip *-raspbian-buster-lite.zip ; rm *-raspbian-buster-lite.zip ; mv *-raspbian-buster-lite.img raspbian-buster-lite.img
```

## Execution
Simply run the run_emulator.sh file with:

`./run_emulator`

Requires Bash.


## Setup
1. Login
When you start the VM you should see the general splash information about the
kernel setting up the virtual devices. Just wait until you get to the login
prompt. The login is:

```
Username: pi
Password: raspberry
```

2. Start SSH Prompt
Inside the pi, run:

`systemctl enable --now ssh`

Now the SSH server is running.
On your local machine simply ssh to the machine with:

`ssh -p 22222 pi@localhost`

The password is again rasberry. Feel free to install tmux on the machine for a
better experience.
