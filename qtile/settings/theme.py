from settings.colorscheme import palette

#####################################################################
# THEMES
#####################################################################

fonts = {
    'default': 'CaskaydiaCove Nerd Font',
    'powerline': 'Source Code Pro',
    'size': 14
}

bar_theme = {
    'color': palette[0],
    'size': 24,
    'margin': 6,
    'border_width': 0,
}

theme = {
    'foreground': '#000000',
    'background': palette[0],
    'active': palette[5],
    'inactive': palette[1],
    'icon_size': 18,
}

group_box = {
    'foreground': palette[5],
    'background': palette[0],
    'active': palette[5],
    'inactive': palette[4],
    'urgent_color': palette[13],
    'this_current_screen_border': palette[9],
    'this_screen_border': palette[5],
    'other_current_screen_border': palette[5],
    'other_screen_border': palette[4],
    'disable_grab': True,
    'highlight': 'text',
    'urgent': 'text',
    'border_width': 2,
}

window_name = {
    'text_color': palette[5],
    'background': palette[1],
    'max_chars': 32,
}

group_colors = {
    1: palette[15],
    2: palette[12],
    3: palette[13],
    4: palette[14],
}

float_window = {
    'border_focus': palette[10],
    'border_normal': palette[8],
    'border_width': 0,
    'margin': 8
}

icons = {
    'size': 18,
    'therm': ' ',
    'ram': '  ',
    'updates': ' ',
    'speed': ' 龍 ',
    'volume': ' ',
    'power': ' ',
    'terminal': '  '
}

layout_colors = {
    'foreground': palette[5],
    'background': palette[0],
    'active': palette[9],
    'inactive': palette[4],
}
