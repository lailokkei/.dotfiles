Set-Alias ls exa

$env:CMAKE_GENERATOR = "Ninja"

$CONFIG_PATH = Join-Path(Split-Path $PSScriptRoot) starship.toml
$ENV:STARSHIP_CONFIG = $CONFIG_PATH

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

function Invoke-Starship-PreCommand {
  $loc = $executionContext.SessionState.Path.CurrentLocation;
  $prompt = "$([char]27)]9;12$([char]7)"
  if ($loc.Provider.Name -eq "FileSystem")
  {
    $prompt += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
  }
  $host.ui.Write($prompt)
}

Invoke-Expression (&starship init powershell)
