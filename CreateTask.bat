@Echo OFF

SET heure=
SET currentpath=%~dp0
SET /p heure=Saisir l'heure de la tache (format hh:mm):
rem "if you are on an english serve use this command
rem at %heure% /EVERY: Monday,Tuesday,Wednesday,Thursday,Friday "%currentpath%axioclean.bat"
rem and comment the line under
at %heure% /EVERY:Lundi,Mardi,Mercredi,Jeudi,Vendredi "%currentpath%axioclean.bat"
pause