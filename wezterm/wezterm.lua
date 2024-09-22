local wezterm = require 'wezterm'
local act = wezterm.action
return {
  -- color scheme
  color_scheme = 'iceberg-dark',
  
  -- opacity
  window_background_opacity = 0.8,

  -- tab bar
  use_fancy_tab_bar = false,
  colors = {
    cursor_bg= '#c6c8d1',
    tab_bar = {
      background = '#1b1f2f',

      active_tab = {
        bg_color = '#444b71',
        fg_color = '#c6c8d1',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = '#282d3e',
        fg_color = '#c6c8d1',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },

      inactive_tab_hover = {
        bg_color = '#1b1f2f',
        fg_color = '#c6c8d1',
        intensity = 'Normal',
        underline = 'None',
        italic = true,
        strikethrough = false,
      },

      new_tab = {
        bg_color = '#1b1f2f',
        fg_color = '#c6c8d1',
        italic = false
      },

      new_tab_hover = {
        bg_color = '#444b71',
        fg_color = '#c6c8d1',
        italic = false
      },
    }
  },

  -- shell
  default_prog = {'zsh', '--login'},

  -- key
  leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },
  keys = {
    {key = 'R', mods = 'LEADER', action=act.ReloadConfiguration},
    {key = 'X', mods = 'LEADER', action = act.ActivateCopyMode },
    {key = 't', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
    {key = '%', mods = 'LEADER', action = act.SplitPane {direction = 'Left', command = { args = { 'top' } }, size = { Percent = 50 }}},
    {key = '|', mods = 'LEADER', action = act.SplitHorizontal {domain = 'CurrentPaneDomain'}},
    {key = '-', mods = 'LEADER', action = act.SplitVertical {domain = 'CurrentPaneDomain'}},
    {key = ' ', mods = 'LEADER', action = act.QuickSelect },
    -- {key = 'w', mods = 'LEADER', action = act.CloseCurrentPane { confirm = true } },
    {key = 'w', mods = 'LEADER', action = act.CloseCurrentTab { confirm = true } },
    {key = '{', mods = 'LEADER', action = act{ActivateTabRelative=-1}},
    {key = '}', mods = 'LEADER', action = act{ActivateTabRelative=1}},
    {key = 'p', mods = 'LEADER', action = act{ScrollByLine=-1}},
    {key = 'n', mods = 'LEADER', action = act{ScrollByLine=1}},
    {key = 'b', mods = 'LEADER', action = act{ScrollByPage=-1}},
    {key = 'f', mods = 'LEADER', action = act{ScrollByPage=1}},
  },
}
