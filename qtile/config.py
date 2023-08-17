import os
import subprocess
from libqtile import layout, hook
from libqtile.config import Click, Drag, DropDown, Key, Match, ScratchPad
from libqtile.lazy import lazy

# This shit requires python-psutils, Ubuntu Mono Nerd Font and Powerline fonts
# requires scrot too

from settings.keys import keys
from settings.groups import groups
from settings.common import *
from settings.layouts import layouts
from settings.screens import screens
from settings.theme import float_window, fonts

widget_defaults = dict(
    font=fonts['default'],
    fontsize=fonts['size'],
    padding=1,
)
extension_defaults = widget_defaults.copy()

#################################################################
# DropDowns
#################################################################

groups.extend([
    ScratchPad('scratch',
               [
                   DropDown(
                       'term',
                       terminal,
                       opacity=1,
                       height=0.5,
                       width=0.5,
                       x=0.25,
                       y=0.01,

                   ),
                   DropDown(
                       'music',
                       music,
                       opacity=1,
                       height=0.75,
                       width=0.75,
                       x=0.125,
                       y=0.125,

                   ),
                   DropDown(
                       'sound_conf',
                       sound_center,
                       opacity=1,
                       height=0.6,
                       width=0.6,
                       x=0.2,
                       y=0.01,

                   ),
               ]
    )
])

keys.extend(
    [
        Key([shift], 'F2', lazy.group['scratch'].dropdown_toggle('term')),
        Key([shift], 'F10', lazy.group['scratch'].dropdown_toggle('music')),
        Key([alt], 'F2', lazy.group['scratch'].dropdown_toggle('sound_conf')),
    ]
)

#################################################################
# MOUSE
#################################################################

mouse = [
    Drag([mod], 'Button1', lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], 'Button3', lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], 'Button2', lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class=clipboard_manager),
        Match(wm_class='confirmreset'),  # gitk
        Match(wm_class='makebranch'),  # gitk
        Match(wm_class='maketag'),  # gitk
        Match(wm_class='ssh-askpass'),  # ssh-askpass
        Match(title='branchdialog'),  # gitk
        Match(title='pinentry'),  # GPG key password entry
    ],
    **float_window
)

auto_fullscreen = True
focus_on_window_activation = 'smart'
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"

#################################################################
# HOOKS
#################################################################

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~')
    subprocess.Popen([home + '/.config/qtile/autostart.sh'])

@hook.subscribe.client_new
def client_new(client):
    if client.name == 'Spotify':
        client.togroup(9)#('  ')
