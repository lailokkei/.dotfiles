$dotfiles_path = $PSScriptRoot
New-Item -Path $HOME\AppData\Local\nvim -ItemType SymbolicLink -Value $dotfiles_path\nvim
