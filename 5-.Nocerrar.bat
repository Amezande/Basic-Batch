@echo off
Get-WinEvent -Eventito @{
    LogName="evento1" 
    ID=789
} | Selected-Object

TimeCreated,  @{name="NewProcessName";expresas { $_. Properties[5].Value}}, 
@{name="User";expression={$_.Properties[1].Value }}|where-object {$_. NewProcessName -like "*MonitorNGM_beta.exe*" }