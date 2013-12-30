@echo off
cls

rem MODIFIER LES VARIABLES VERS LE CHEMIN DES DIFFERENTS EXE
SET bleachbit="C:\Program Files (x86)\BleachBit"
SET cleanup="C:\Program Files (x86)\CleanUp!"
SET ccleaner="C:\Program Files\CCleaner"


rem **************************************************************
rem 		NE RIEN TOUCHER EN DESSOUS DE CETTE LIMITE
rem **************************************************************

SET currentpath=%~dp0

echo ****************************************************************
echo **                                                            **
echo **          NETTOYAGE AUTOMATIQUE DES SERVEURS                **
echo **                                                            **
echo **                 PAR THOMAS FAGEOL                          **
echo **                                                            **
echo ****************************************************************

echo BleachBit
c:
date /t >> "%currentpath%logs\bleachbit.txt"
time /t >> "%currentpath%logs\bleachbit.txt"
cd %bleachbit%
bleachbit_console.exe -c --preset >> "%currentpath%logs\bleachbit.txt"
echo --------------------------------------------------------------------- >> "%currentpath%logs\bleachbit.txt"

echo CleanUp
c: %cleanup%
date /t >> "%currentpath%logs\cleanup.txt"
time /t >> "%currentpath%logs\cleanup.txt"
cd %cleanup%
cleanup.exe -AutoRun >> "%currentpath%logs\cleanup.txt"
echo --------------------------------------------------------------------- >> "%currentpath%logs\cleanup.txt"

echo Ccleaner
c:
date /t >> "%currentpath%logs\ccleaner.txt"
time /t >> "%currentpath%logs\ccleaner.txt"
cd %ccleaner%
CCleaner.exe /AUTO >> "%currentpath%logs\ccleaner.txt"
echo --------------------------------------------------------------------- >> "%currentpath%logs\ccleaner.txt"

echo Nettoyage du disque par Windows
date /t >> "%currentpath%logs\nettoyageWindows.txt"
time /t >> "%currentpath%logs\nettoyageWindows.txt"
cleanmgr /sagerun:1 >> "%currentpath%logs\nettoyageWindows.txt"
echo --------------------------------------------------------------------- >> "%currentpath%logs\nettoyageWindows.txt"


