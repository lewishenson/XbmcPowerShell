# XbmcPowerShell

Windows PowerShell commands for controlling XBMC using SSH. (Note: I'm using this on Xbian installed on a Raspberry Pi.)

## Pre-Requisites

For your Windows machine, you'll need to get the [SSH-Sessions module](http://www.powershelladmin.com/wiki/SSH_from_PowerShell_using_the_SSH.NET_library) and make sure it's available in your PowerShell session.

For your XBMC machine, you'll need the xbmc-send client installed. For example, to install on an Xbian machine:

```console
sudo apt-get update
sudo install xbmc-eventclients-xbmc-send
```

## Installation

Once you have the xbmc.psm1 file on your local machine, edit the variables defined at the top of the file with your own host, user and password details.

## Usage

Once you have the pre-requisties installed and have set up the variables mentioned above, fire up PowerShell!

The first thing you'll need to do is establish a connection:

```powershell
PM> Connect-Xbmc
```

You can then invoke the many functions included. If you want to test everything is working, why not start simple and send a test notification?

```powershell
PM> Invoke-XbmcTestCommand
```

Once you are done, just end your session:

```powershell
PM> Disconnect-Xbmc
```
