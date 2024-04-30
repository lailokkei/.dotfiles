function prompt {
  $loc = $executionContext.SessionState.Path.CurrentLocation;

  $out = ""
  if ($loc.Provider.Name -eq "FileSystem") {
    $out += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
  }
  $out += "PS $loc$('>' * ($nestedPromptLevel + 1)) ";
  return $out
}

Set-Alias ls exa

$POSH_CONFIG = Join-Path(Split-Path $PSScriptRoot) theme.omp.json
oh-my-posh init pwsh --config $POSH_CONFIG | Invoke-Expression
