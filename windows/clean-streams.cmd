@ECHO OFF

IF EXIST %USERPROFILE%\Books (
  streams64 -s -d -nobanner %USERPROFILE%\Books
) ELSE (
  ECHO Das Verzeichnis %USERPROFILE%\Books existiert nicht
)

streams64 -s -d -nobanner %USERPROFILE%\Documents
streams64 -s -d -nobanner %USERPROFILE%\Downloads
streams64 -s -d -nobanner %USERPROFILE%\Music
streams64 -s -d -nobanner %USERPROFILE%\Pictures
streams64 -s -d -nobanner %USERPROFILE%\Videos
