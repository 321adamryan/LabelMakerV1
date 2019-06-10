@echo off
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo       filename: IM - ArtSlickGenerator.bat
echo          coder: AdamRyan
echo        program: Imagemagick
echo  requirements: Imagemagick , IM - LabelMakerV1.bat
echo        download: https://www.imagemagick.org/script/download.php
echo    description: This script utilizes Image Magik to combine labels made with LabelMakerV1 into a printable sheet
echo      extention: BAT
echo       licensce: OpenSource
echo        website: adamryan.info
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo enter password to activate program.
set/p "pass=>"
if NOT %pass%== 313 goto :FAIL


set image=G:\Team Drives\Graphics Team Drive\_LabelMaker\SingleLabels\Tag*.jpg
magick montage "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" "%image%" -tile 4x11 -geometry +0+0 print.jpg