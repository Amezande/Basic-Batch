@echo off
Get-WinEvent -Eventito @{
    LogName="evento1" 
    ID=789
} | Selected-Object

TimeCreated,  @{name="NewProcessName";expresas { $_. Properties[5].Value}}