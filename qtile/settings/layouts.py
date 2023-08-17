from libqtile import layout
from libqtile.config import Match
from settings.theme import (
    layout_colors,
    fonts
)

#################################################################
# LAYOUTS
#################################################################

layout_theme = {
    'border_focus_stack': [
        layout_colors['foreground'],
        layout_colors['background']
    ],
    'border_on_single': True,
    'border_width': 0,
    'margin': 8,
    'margin_on_single': 16,
    'border_focus': layout_colors['active'],
    'border_normal': layout_colors['background'],
    'insert_position': 1,
}

layouts = [
    layout.Columns(**layout_theme),
    layout.Max(),
    layout.Tile(**layout_theme),
    layout.MonadWide(**layout_theme),
    layout.TreeTab(
        active_bg=layout_colors['active'],
        active_fg=layout_colors['foreground'],
        inactive_bg=layout_colors['inactive'],
        inactive_fg=layout_colors['foreground'],
        bg_color=layout_colors['background'],
        section_fg=layout_colors['background'],
        border_width=0,
        font=fonts['powerline'],
        panel_width=160,
        vspace=1,
    ),
]
