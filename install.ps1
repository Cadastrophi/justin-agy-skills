param(
  [string]$Target = "$HOME\.gemini\config\skills",
  [switch]$Replace
)
$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'skills'
$backup = Join-Path $HOME ".justin-agy-skills\backups\$(Get-Date -Format yyyyMMdd-HHmmss)"
New-Item -ItemType Directory -Force $Target | Out-Null

foreach ($skill in Get-ChildItem $source -Directory) {
  $link = Join-Path $Target $skill.Name
  if (Test-Path -LiteralPath $link) {
    $item = Get-Item -LiteralPath $link -Force
    if ($item.LinkType -and $item.Target -eq $skill.FullName) { Write-Host "ok        $($skill.Name)"; continue }
    if ($item.LinkType) { cmd /c rmdir "$link" | Out-Null }
    elseif ($Replace) { New-Item -ItemType Directory -Force $backup | Out-Null; Move-Item -LiteralPath $link -Destination $backup }
    else { Write-Host "CONFLICT  $($skill.Name) (real folder; rerun with -Replace)"; continue }
  }
  New-Item -ItemType Junction -Path $link -Target $skill.FullName | Out-Null
  Write-Host "linked    $($skill.Name)"
}
