@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Cambiar "LocalizationManager.json" a "localization_manager.json"
CD ..
RENAME "LocalizationManager.json" "localization_manager.json"
:: Hacer versión EGS y Switch en JPP9-ES-EGS-SWITCH.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP9-ES-EGS-SWITCH.zip" "."
:: Copiar y pegar "ArchivoMS"
CD ..
xcopy "ArchivoMS" "Main" /s /y
:: Hacer versión Microsoft Store en JPP9-ES-MS.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP9-ES-MS.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Cambiar "LocalizationManager.json" a "localization_manager.json"
CD ..
RENAME "localization_manager.json" "LocalizationManager.json"
:: Copiar y pegar "ArchivoSteam"
CD ..
xcopy "ArchivoSteam" "Main" /s /y
:: Hacer versión Steam en JPP9-ES.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP9-ES.zip" "."