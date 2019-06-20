for /r %C:\CC_Process_System %%i in (*.ptx) do "C:\Program Files\Zeiss\PiWeb\Cmdmon.exe" -open "%%i" -setDatabaseUrl "http://10.202.0.9:8088" -keepFileMetadata -clientAuthenticationMode "NoneOrBasic"
