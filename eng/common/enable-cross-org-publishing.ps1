param(
  [string] $token
)

# Write-PipelineSetVariable will no-op if a variable named $ci is not defined
# Since this script is only ever called in AzDO builds, just universally set it
$ci = $true

. $PSScriptRoot\pipeline-logging-functions.ps1

Write-PipelineSetVariable -Name 'VSS_NUGET_ACCESSTOKEN' -Value $token
Write-PipelineSetVariable -Name 'VSS_NUGET_URI_PREFIXES' -Value 'https://dnceng.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/dnceng/;https://devdiv.pkgs.visualstudio.com/;https://pkgs.dev.azure.com/devdiv/'
