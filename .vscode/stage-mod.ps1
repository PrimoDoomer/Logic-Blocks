param(
    [Parameter(Mandatory = $true)] [string] $Src,
    [Parameter(Mandatory = $true)] [string] $Dst
)
robocopy $Src $Dst /MIR /NJH /NJS /NFL /NDL /NP | Out-Null
if ($LASTEXITCODE -ge 8) { exit $LASTEXITCODE }
exit 0
