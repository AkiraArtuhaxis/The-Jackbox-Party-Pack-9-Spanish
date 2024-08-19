@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Cambiar "LocalizationManager.json" a "localization_manager.json"
CD ..
RENAME "LocalizationManager.json" "localization_manager.json"
:: Hacer versión EGS y Switch en JPP9-ES-EGS-MS-SWITCH.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP9-ES-EGS-MS-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Cambiar "LocalizationManager.json" a "localization_manager.json"
CD ..
RENAME "localization_manager.json" "LocalizationManager.json"
:: Hacer versión Steam en JPP9-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP9-ES.zip" "."