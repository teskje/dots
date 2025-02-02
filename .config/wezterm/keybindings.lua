local wezterm = require 'wezterm'
local A = wezterm.action
local M = {}

key_bindings = {
  -- navigation
  { mods = 'CMD', key = 'h', action = A.ActivatePaneDirection 'Left' },
  { mods = 'CMD', key = 'j', action = A.ActivatePaneDirection 'Down' },
  { mods = 'CMD', key = 'k', action = A.ActivatePaneDirection 'Up' },
  { mods = 'CMD', key = 'l', action = A.ActivatePaneDirection 'Right' },
  { mods = 'CMD', key = 'LeftArrow', action = A.ActivatePaneDirection 'Left' },
  { mods = 'CMD', key = 'DownArrow', action = A.ActivatePaneDirection 'Down' },
  { mods = 'CMD', key = 'UpArrow', action = A.ActivatePaneDirection 'Up' },
  { mods = 'CMD', key = 'RightArrow', action = A.ActivatePaneDirection 'Right' },

  -- splitting
  { mods = 'CMD|SHIFT', key = 'h', action = A.SplitPane { direction = 'Left' } },
  { mods = 'CMD|SHIFT', key = 'j', action = A.SplitPane { direction = 'Down' } },
  { mods = 'CMD|SHIFT', key = 'k', action = A.SplitPane { direction = 'Up' } },
  { mods = 'CMD|SHIFT', key = 'l', action = A.SplitPane { direction = 'Right' } },
  { mods = 'CMD|SHIFT', key = 'LeftArrow', action = A.SplitPane { direction = 'Left' } },
  { mods = 'CMD|SHIFT', key = 'DownArrow', action = A.SplitPane { direction = 'Down' } },
  { mods = 'CMD|SHIFT', key = 'UpArrow', action = A.SplitPane { direction = 'Up' } },
  { mods = 'CMD|SHIFT', key = 'RightArrow', action = A.SplitPane { direction = 'Right' } },
}

function M.apply_to_config(config)
  config.keys = key_bindings
end

return M
