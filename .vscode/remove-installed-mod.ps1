param(
    [Parameter(Mandatory = $true)] [string] $ModsDir,
    [Parameter(Mandatory = $true)] [string] $Pattern
)
Get-ChildItem (Join-Path $ModsDir $Pattern) -ErrorAction SilentlyContinue |
    Remove-Item -Recurse -Force
