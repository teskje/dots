local wezterm = require 'wezterm'
local act = wezterm.action

local module = {}
 
key_bindings = {
  {
    key = 'h',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Right',
  },

  {
    key = 'LeftArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'DownArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'UpArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'RightArrow',
    mods = 'CMD',
    action = act.ActivatePaneDirection 'Right',
  },

  {
    key = 'h',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Left' },
  },
  {
    key = 'j',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Down' },
  },
  {
    key = 'k',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Up' },
  },
  {
    key = 'l',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Right' },
  },

  {
    key = 'LeftArrow',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Left' },
  },
  {
    key = 'DownArrow',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Down' },
  },
  {
    key = 'UpArrow',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Up' },
  },
  {
    key = 'RightArrow',
    mods = 'CMD|SHIFT',
    action = act.SplitPane { direction = 'Right' },
  },
}

function module.apply_to_config(config)
  -- config.disable_default_key_bindings = true
  config.keys = key_bindings
end

return module
