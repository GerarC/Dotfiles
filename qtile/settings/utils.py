from libqtile import widget
from libqtile import qtile
from libqtile.lazy import lazy
from libqtile.log_utils import logger

from settings.theme import *
import subprocess

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

def brightness(qtile, percentage):
    commands = [
        f"brightnessctl set {percentage}",
        """notify-send "Bright" "$(brightnessctl | grep % | sed 's/^\\t\\w* \\w*: \\w* (\\(\\w*%\\))/Brightness at \\1/g')" -u low -h string:x-canonical-private-synchronous:my-notification;"""
    ] 
    for cmd in commands: subprocess.run([cmd], capture_output=True, text=True, check=True, shell=True)
