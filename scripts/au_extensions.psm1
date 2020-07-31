$funcs = @(
  "Get-LatestGithubReleases"
  "Get-ValidOpenSourceLicense"
)

$funcs | % {
  . "$PSScriptRoot\$_.ps1"
  Export-ModuleMember -Function $_
}