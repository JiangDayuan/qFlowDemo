for /r %C:\Users\ZCQIZHAO\Documents\GitHub\qFlowDemo %%i in (*.ptx) do "C:\Program Files\Zeiss\PiWeb\Cmdmon.exe" -open "%%i" -setDatabaseUrl "http://10.202.120.59:8088" -keepFileMetadata -clientAuthenticationMode "NoneOrBasic"