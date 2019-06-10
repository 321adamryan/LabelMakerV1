@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - LabelMakerV1.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick , IM - SheetMakerV1.bat
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to create a product label
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL


:code
echo.
echo.
@echo off
echo Input price as dolars then cents
set /p dolars="Dolars?"
set /p cents="Cents?"
set /p brand="Brand?"
set /p name="Name? {<20 Characters} "
set /p qty="Quantity (8.5oz or 1ea)? {<6 Characters} "
set ext=jpg
set price=%dolars%.%cents%
set dest=C:\Users\decka\Google Drive\_PackagedSoftware\_LabelMaker\SingleLabels\
magick convert "_LabelTemplate.jpg" -pointsize 90 -font Arial-Black -annotate +180+110 "$%price%" -pointsize 50 -font Arial-Bold -annotate +40+180 "%brand%"  -pointsize 40 -font Arial -annotate +40+230 "%name%" -pointsize 55 -font Arial-Italic -annotate +410+240 "%qty%" "%dest%_%brand%_%name%_%dolars%%cents%.%ext%"
GOTO code
