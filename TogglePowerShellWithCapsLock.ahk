If GetKeyState("CapsLock", "T") = 1
  SetCapsLockState, Off
CapsLock::
  Process, Exist, powershell.exe
  If (%ErrorLevel% = 0)
    Run, "powershell.exe", "%winddir%\System32\WindowsPowerShell\v1.0", Max
  Else
    WinActivate, ahk_pid %ErrorLevel%
