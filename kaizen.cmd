REM @setlocal
@echo off
@setlocal enableextensions enabledelayedexpansion
for /f "delims== tokens=1,2" %%G in (kaizeninf.ini) do set %%G=%%H

REM ################


:sof
set /p what=
echo. 
echo %what%
set text=%what%
set what=%what:`=_%
set what=%what:,=_%
set what=%what: =_%
echo %what%
echo ---------------------------------------------
REM RESET NUMBERS
set hello=0
set bye=0
set help=0
set openexplorer=0 
set nothing=0
set shutdown=0
set shutdown2nd=0
set firestorm=0
set backup=0
set mountbackup=0
set nmountbackup=0
set restart=0
set belive=0
set believe=0
set chrome=0
set teamspeak=0
set discord=0
set steam=0
set opentouhou=0
set np=0
set favcolor=0
set wow=0
set dirty=0

REM ###########################################

if not x%what:hello=%==x%what% set /a hello+=1
if not x%what:bye=%==x%what% set /a bye+=2
if not x%what:exit=%==x%what% set /a bye+=2
if not x%what:help=%==x%what% set /a help+=3
if not x%what:open=%==x%what% set /a openexolorer+=1 & set /a opentouhou+=1
if not x%what:explorer=%==x%what% set /a openexplorer+=2
if not x%what:nothing=%==x%what% set /a nothing+=3
if not x%what:shutdown=%==x%what% set /a shutdown+=1 & set /a shutdown2nd+=1
if not x%what:2nd=%==x%what% set /a shutdown2nd+=2
if not x%what:firestorm=%==x%what% set /a firestorm+=2
if not x%what:backup=%==x%what% set /a backup+=1
if not x%what:document=%==x%what% set /a backup+=2
if not x%what:mount=%==x%what% set /a mountbackup+=1
if not x%what:unmount=%==x%what% set /a unmountbackup+=2
if not x%what:restart=%==x%what% set /a restart+=2
if not x%what:belive=%==x%what% set /a belive+=3
if not x%what:believe=%==x%what% set /a believe+=3
if not x%what:chrome=%==x%what% set /a chrome+=2
if not x%what:teamspeak=%==x%what% set /a teamspeak+=2
if not x%what:discord=%==x%what% set /a discord+=2
if not x%what:steam=%==x%what% set /a steam+=2
if not x%what:touhou=%==x%what% set /a opentouhou+=3
if not x%what:hey=%==x%what% set /a hello+=1
if not x%what:thank=%==x%what% set /a np+=1
if not x%what:sex=%==x%what% set /a dirty+=2
if not x%what:ass=%==x%what% set /a dirty+=2
if not x%what:dirty=%==x%what% set /a dirty+=2
if not x%what:color=%==x%what% set /a favcolor+=2
if not x%what:favorite=%==x%what% set /a favcolor+=2
if not x%what:wow=%==x%what% set /a wow+=1

if not x%what:kek=%==x%what% set /a kek+=1

REM Sort in array
set ara[1]=%hello%
set ara[2]=%bye%
set ara[3]=%help%
set ara[4]=%openexplorer%
set ara[5]=%opentouhou%
set ara[6]=%nothing%
set ara[7]=%shutdown%
set ara[8]=%shutdown2nd%
set ara[9]=%firestorm%
set ara[10]=%backup%
set ara[11]=%mountbackup%
set ara[12]=%unmountbackup%
set ara[13]=%restart%
set ara[14]=%belive%
set ara[15]=%believe%
set ara[16]=%chrome%
set ara[17]=%teamspeak%
set ara[18]=%discord%
set ara[19]=%steam%
set ara[20]=%np%
set ara[21]=%dirty%
set ara[22]=%favcolor%
set ara[23]=%wow%



set "vars=%ara[1]%,%ara[2]%,%ara[3]%,%ara[4]%,%ara[5]%,%ara[6]%,%ara[7]%,%ara[8]%,%ara[9]%,%ara[10]%,%ara[11]%,%ara[12]%,%ara[13]%,%ara[14]%,%ara[15]%,%ara[16]%,%ara[17]%,%ara[18]%,%ara[19]%,%ara[20]%, %ara[21]%,%ara[22]%,%ara[23]%,%ara[24]%,%ara[25]%,%ara[26]%,%ara[27]%,%ara[28]%,%ara[29]%,%ara[30]%"
    set "out="

    :: separate the elements, sort and concatenate again
	@SETLOCAL enableextensions enabledelayedexpansion
    for /f "delims=" %%a in (
        'cmd /q /c "for %%a in (%vars%) do echo(%%a"^|sort'
    ) do set "out=!out!,%%a"
	


    :: there is an initial comma to delete
    set "out=%out:~1%"
    set what=%out:~-1%
	echo %what%



REM ############################################
IF "%what%" EQU "0" goto eot
IF "%what%" EQU "%ara[1]%" goto hello
IF "%what%" EQU "%ara[2]%" goto exit
IF "%what%" EQU "%ara[3]%" goto help
IF "%what%" EQU "%ara[4]%" goto open-explorer
IF "%what%" EQU "%ara[5]%" goto opentouhou
IF "%what%" EQU "%ara[6]%" goto nothing
IF "%what%" EQU "%ara[7]%" goto shutdown
IF "%what%" EQU "%ara[8]%" goto shutdown2nd
IF "%what%" EQU "%ara[9]%" goto startfirestorm
IF "%what%" EQU "%ara[10]%" goto backupdoc
IF "%what%" EQU "%ara[11]%" goto mountback
IF "%what%" EQU "%ara[12]%" goto unmountback
IF "%what%" EQU "%ara[13]%" goto restart
IF "%what%" EQU "%ara[14]%" goto believewrong
IF "%what%" EQU "%ara[15]%" goto entropy
IF "%what%" EQU "%ara[16]%" goto chrome
IF "%what%" EQU "%ara[17]%" goto teamspeak3
IF "%what%" EQU "%ara[18]%" goto discord
IF "%what%" EQU "%ara[19]%" goto steam
IF "%what%" EQU "%ara[20]%" goto np
IF "%what%" EQU "%ara[21]%" goto dirty
IF "%what%" EQU "%ara[22]%" goto favcolor
IF "%what%" EQU "%ara[23]%" goto wow
@ENDLOCAL
:eot
echo %text% >> Logs\TextIdidntunderstand.txt
echo Sorry, I didnt understand you, I will look up what it means. OuO
echo type "help" for..... yea, some help :3
goto sof
goto eof

REM###################################
:hello
%secondaryskriptpath%/hello.cmd
goto sof

:exit
%secondaryskriptpath%/exit.cmd
goto sof

:help
%secondaryskriptpath%/help.cmd
goto sof

:open-explorer
%secondaryskriptpath%/open-explorer.cmd
goto sof

:opentouhou
%secondaryskriptpath%/opentouhou.cmd
goto sof

:nothing
%secondaryskriptpath%/nothing.cmd
goto sof

:shutdown2nd
%secondaryskriptpath%/shutdown_2nd.cmd
goto sof

:terminaldark
%secondaryskriptpath%/terminal-dark.cmd
goto sof

:terminalbright
%secondaryskriptpath%/terminal-bright.cmd
goto sof

:goto startfirestorm
%secondaryskriptpath%/Firestorm-startup.cmd
goto sof

:backupdoc
%secondaryskriptpath%/Backup-doku.cmd
goto sof

:mountback
%secondaryskriptpath%/Backupmount.cmd
goto sof

:unmountback
%secondaryskriptpath%/Backupunmount.cmd
goto sof

:restart
%secondaryskriptpath%/restart.cmd
goto sof

:entropy
%secondaryskriptpath%/entropy.cmd
goto sof

:believewrong
%secondaryskriptpath%/belive.cmd
goto sof

:teamspeak3
%secondaryskriptpath%/teamspeak3.cmd
goto sof

:chrome
%secondaryskriptpath%/chrome.cmd
goto sof

:steam
%secondaryskriptpath%/steam.cmd
goto sof

:discord
%secondaryskriptpath%/discord.cmd
goto sof

:startup
%secondaryskriptpath%/startnormal1.cmd
goto sof

:np
%secondaryskriptpath%/np.cmd
goto sof

:dirty
%secondaryskriptpath%/dirty.cmd
goto sof

:favcolor
%secondaryskriptpath%/favcolor.cmd
goto sof

:wow
%secondaryskriptpath%/wow.cmd
goto sof


:eof
