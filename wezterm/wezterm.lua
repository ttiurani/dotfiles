local wezterm = require 'wezterm'

local scheme = wezterm.get_builtin_color_schemes()['Builtin Solarized Dark']
scheme.background = 'black'

local font_rules = {
    -- For Bold-but-not-italic text, use this relatively bold font
    {
      intensity = 'Bold',
      italic = false,
      font = wezterm.font {
        family = 'Operator Mono SSm Lig',
      },
    },

    -- Bold-and-italic
    {
      intensity = 'Bold',
      italic = true,
      font = wezterm.font {
        family = 'Operator Mono SSm Lig',
        italic = true,
      },
    },

    -- normal-intensity-and-italic
    {
      intensity = 'Normal',
      italic = true,
      font = wezterm.font {
        family = 'Operator Mono SSm Lig',
        weight = 'Book',
        italic = true,
      },
    },

    -- half-intensity-and-italic (half-bright or dim); use a lighter weight font
    {
      intensity = 'Half',
      italic = true,
      font = wezterm.font {
        family = 'Operator Mono SSm Lig',
        weight = 'Light',
        italic = true,
      },
    },

    -- half-intensity-and-not-italic
    {
      intensity = 'Half',
      italic = false,
      font = wezterm.font {
        family = 'Operator Mono SSm Lig',
        weight = 'Light',
      },
    },
};

return {
  font = wezterm.font {
     family = 'Operator Mono SSm Lig Book'
  },
  font_rules = font_rules,
  color_schemes = {
    ['Builtin Solarized Dark Black'] = scheme,
  },
  color_scheme = 'Builtin Solarized Dark Black',
}
