 print("✅ WSL config loaded")

local wezterm = require 'wezterm'

return {
  font = wezterm.font 'JetBrainsMono Nerd Font',
  font_size = 11.5,
  color_scheme = 'Catppuccin Mocha',
  enable_tab_bar = false,
  default_prog = { 'wsl.exe', '--distribution', 'Ubuntu' },
}

