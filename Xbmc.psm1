﻿Import-Module SSH-Sessions

[string]$host = 'replace with your host name'
[string]$user = 'replace with your user name'
[string]$password = 'replace with your password'

function Connect-Xbmc
{
    New-SshSession -ComputerName $host -Username $user -Password $password
}

function Disconnect-Xbmc
{
    Remove-SshSession $host
}

function Invoke-XbmcCommand 
{
    param([string]$command)
    $xbmcCommand = 'xbmc-send --a "{0}"' -f $command
    Invoke-SshCommand -ComputerName $host -Command $xbmcCommand
}

function Invoke-XbmcTestCommand
{
    Invoke-XbmcCommand -command "xbmc.Notification(Testing, Hello World!)"
}

function Invoke-XbmcReboot
{
    Invoke-XbmcCommand -command "xbmc.Reboot"
}

function Invoke-XbmcShutDown
{
    Invoke-XbmcCommand -command "xbmc.ShutDown"
}

function Invoke-XbmcPowerdown
{
    Invoke-XbmcCommand -command "xbmc.Powerdown"
}

function Invoke-XbmcQuit
{
    Invoke-XbmcCommand -command "xbmc.Quit"
}

function Invoke-XbmcHibernate
{
    Invoke-XbmcCommand -command "xbmc.Hibernate"
}

function Invoke-XbmcSuspend
{
    Invoke-XbmcCommand -command "xbmc.Suspend"
}

function Invoke-XbmcUpdateVideoLibrary 
{
    Invoke-XbmcCommand -command "xbmc.updatelibrary(video)"
}

function Invoke-XbmcUpdateMusicLibrary 
{
    Invoke-XbmcCommand -command "xbmc.updatelibrary(music)"
}

function Invoke-XbmcPlay
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Play)"
}

function Invoke-XbmcStop
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Stop)"
}

function Invoke-XbmcForward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Forward)"
}

function Invoke-XbmcReward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Reward)"
}

function Invoke-XbmcNext
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Next)"
}

function Invoke-XbmcPrevious
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(Previous)"
}

function Invoke-XbmcBigSkipForward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(BigSkipForward)"
}

function Invoke-XbmcBigSkipBackward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(BigSkipBackward)"
}

function Invoke-XbmcSmallSkipForward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(SmallSkipForward)"
}

function Invoke-XbmcSmallSkipBackward
{
    Invoke-XbmcCommand -command "xbmc.PlayerControl(SmallSkipBackward)"
}

function Invoke-XbmcHomeWindow
{
    Invoke-XbmcCommand -command "xbmc.ActivateWindow(Home)"
}

function Invoke-XbmcFileManagerWindow
{
    Invoke-XbmcCommand -command "xbmc.ActivateWindow(FileManager)"
}

function Invoke-XbmcPicturesWindow
{
    Invoke-XbmcCommand -command "xbmc.ActivateWindow(Pictures)"
}

function Invoke-XbmcMusicWindow
{
    Invoke-XbmcCommand -command "xbmc.ActivateWindow(Music)"
}

function Invoke-XbmcVideoWindow
{
    Invoke-XbmcCommand -command "xbmc.ActivateWindow(Video)"
}
