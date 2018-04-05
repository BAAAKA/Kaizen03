@echo off
@setlocal enableextensions enabledelayedexpansion
for /f "delims== tokens=1,2" %%G in (kaizeninf.ini) do set %%G=%%H

set /a ran1=%random% %%11 +1
echo %ran1%
IF "%ran1%"=="1" ECHO RED - Red is the love that I could feel for you
IF "%ran1%"=="2" ECHO RED - Red is the color that I see as true
IF "%ran1%"=="3" ECHO RED - Red is the daytime, red is the night        Red is the strength you need in a fight
IF "%ran1%"=="4" ECHO BLACK - Black is the color of blindness, In which my dark path seems, Black is the color of darkness, In which I may not see
IF "%ran1%"=="5" ECHO BLACK - Black is death on a rainy day, Shadows moving in every way,
IF "%ran1%"=="6" ECHO BLUE - Do you think there's a reason, as to why the sky and the ocean, the two biggest things in existence, are blue? Maybe it's to remind us that blue isn't just a word we use when we're feeling small.
IF "%ran1%"=="7" ECHO YELLOW - My room is painted yellow...  I will make some jello!
IF "%ran1%"=="8" ECHO YELLOW - Yellow is the color of friendship, While red stands for the color of love, Love doesn't guarantee friendship, But friendship does guarantee love. 
IF "%ran1%"=="9" ECHO  GREEN - Green is so important, Because we see it all around, It's up very high on the trees, And on the grass that is on the ground
IF "%ran1%"=="10" (ECHO The colour grey
ECHO describes my being
ECHO my very existance
ECHO it dwells on grey.
ECHO Its not happy
ECHO but its not hopeless.
ECHO Its not sunny
ECHO but its not an all out tornado.
ECHO Its grey.
ECHO Its the inbetween.
ECHO I reside between 
ECHO contentment and despair.
)
IF "%ran1%" EQU "11" ECHO PURPLE - Purple is the tune of my soul, strumming gently, straining to be heard, Purple is the breath of anticipation, at the prospect of something laying wait to be unleashed, unbound...
IF "%ran1%" EQU "12" ECHO THIS SHOULD NOT BE POSSIBLE! ERROR 010
IF "%ran1%" EQU "0" ECHO THIS SHOULD NOT BE POSSIBLE! ERROR 010


%skriptpath%/%filename%
@endlocal

