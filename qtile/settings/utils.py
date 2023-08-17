from libqtile import widget
from settings.theme import *

#################################################################
# CUSTOM FUNCTIONS
#################################################################
def separator(color: str):
    return widget.Sep(
        foreground=theme['foreground'],
        background=color,
        linewidth=0,
        padding=16,
    )

def corner(icon: str, ng_color: str, pg_color: str):
    return widget.TextBox(
        text=icon,
        fontsize=bar_theme['size'] + 1,
        font=fonts['powerline'],
        foreground=pg_color,
        background=ng_color,
        padding=-0.1,
    )

def section_corner(ng_color: str, pg_color: str, n: int):
    icons = {
        0: '',
        1: '',
        2: '',
        3: '',
        4: '░▒▓',
        5: '▓▒░',
    }
    return corner(icons[n], ng_color, pg_color)

def set_icon(icon: str, group_color: str, mouse_callbacks={}):
    return widget.TextBox(
        text=icon,
        fontsize=icons['size'],
        foreground=theme['foreground'],
        background=group_color,
        mouse_callbacks=mouse_callbacks,
    )
