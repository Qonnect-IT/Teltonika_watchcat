# Teltonika_watchcat
Teltonika Custom watchcat

This repository was made to hold a custom variant of the Watchcat program by segal.di.ubi.pt.

Teltonika routers are running a custom version of OpenWRT, therefor not all programs can be used natively on Teltonika devices. This Watchcat version is made to replace the one already available on the Teltonika router version RUT 240.

## Config template

the file ```watchcat.config``` holds a template for configuring Watchcat. The file uses parameters as specified on https://openwrt.org/docs/guide-user/advanced/watchcat

## Installation

Log into the Teltonika via SSH and run the following command:

```
curl --output - https://raw.githubusercontent.com/Qonnect-IT/Teltonika_watchcat/master/watchcat.install.sh | sh
```
## Usage

Watchcat autostarts after running the install script, Logoutput is sent to Teltonika's logcollector and can be viewed in the webinterface (process name: Watchcat). or via CLI with the command ```logread -f```.

## Manual usage of Watchcat

Please follow the instructions on the OpenWRT website for command-line switches. Standard init.d is used to create a service of the Watchcat script.

Starting and stopping the daemon is done with the following commands;

```
/etc/init.d/watchcat start
/etc/init.d/watchcat stop
```

Logging can be read with ```logread -f```.

## Tested firmware versions

RUT_2XX_R-00.01.14.5
