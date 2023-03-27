import subprocess
from libqtile import widget
from settings.theme import *

#################################################################
# CUSTOM FUNCTIONS
#################################################################
def separator(color):
    return widget.Sep(
        foreground=theme['foreground'],
        background=color,
        linewidth=0,
        padding=16,
    )

def corner(icon: str, ng_color, pg_color):
    return widget.TextBox(
        text=icon,
        fontsize=bar_theme['size'] + 1,
        font=fonts['powerline'],
        foreground=pg_color,
        background=ng_color,
        padding=-0.1,
    )

def section_corner(ng_color, pg_color, n: int):
    icons = {
        0: '',
        1: '',
        2: '',
        3: '',
    }
    return corner(icons[n], ng_color, pg_color)

def set_icon(icon, group_color, mouse_callbacks={}):
    return widget.TextBox(
        text=icon,
        fontsize=icons['size'],
        foreground=theme['foreground'],
        background=group_color,
        mouse_callbacks=mouse_callbacks,
    )
