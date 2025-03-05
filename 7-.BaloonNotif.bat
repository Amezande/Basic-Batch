@echo off
Add-Type-AssemblyName System.Windows.Forms

$global:balmsg=New-Object
System.Windows.Forms.NotifyIcon
$Path=(Get-Process -ID $pid).Path