from libqtile.config import Key
from libqtile.command import lazy

from settings.groups import groups
from settings.common import *

#################################################################
# KEYS
#################################################################

keys = [
    # Focus
    Key([mod], 'h', lazy.layout.left(), desc='Move focus to left'),
    Key([mod], 'l', lazy.layout.right(), desc='Move focus to right'),
    Key([mod], 'j', lazy.layout.down(), desc='Move focus down'),
    Key([mod], 'k', lazy.layout.up(), desc='Move focus up'),
    Key([mod], 'space', lazy.layout.next(), desc='Move window focus to other window'),

    # Move
    Key([mod, shift], 'l', lazy.layout.shuffle_right(), desc='Move window to the right'),
    Key([mod, shift], 'h', lazy.layout.shuffle_left(), desc='Move window to the left'),
    Key([mod, shift], 'j', lazy.layout.shuffle_down(), desc='Move window down'),
    Key([mod, shift], 'k', lazy.layout.shuffle_up(), desc='Move window up'),

    # Grow
    Key([mod, ctrl], 'h', lazy.layout.grow_left(), desc='Grow window to the left'),
    Key([mod, ctrl], 'l', lazy.layout.grow_right(), desc='Grow window to the right'),
    Key([mod, ctrl], 'j', lazy.layout.grow_down(), desc='Grow window down'),
    Key([mod, ctrl], 'k', lazy.layout.grow_up(), desc='Grow window up'),
    Key([mod], 'n', lazy.layout.normalize(), desc='Reset all window sizes'),

    Key([mod, shift], 'Return', lazy.layout.toggle_split(), desc='Toggle between split and unsplit sides of stack'),

    # Toggle between different layouts as defined below
    Key([mod], 'Tab', lazy.next_layout(), desc='Toggle between layouts'),
    Key([mod, ctrl], 'Tab', lazy.prev_layout(), desc='Toggle between layouts'),
    Key([alt], 'f', lazy.window.toggle_floating(), desc='Toggle between layouts'),

    Key([mod], 'w', lazy.window.kill(), desc='Kill focused window'),
    Key([mod, ctrl], 'r', lazy.reload_config(), desc='Reload the config'),
    Key([mod, ctrl], 'q', lazy.shutdown(), desc='Shutdown Qtile'),
    Key([mod], 'r', lazy.spawncmd(), desc='Spawn a command using a prompt widget'),

    # Controls
    Key([], 'Print', lazy.spawn("scrot -e 'mv ~/*.png ~/Images/Screenshots/%Y-%m-%d-%T-screenshot.png'"), desc='Screenshot'),
    Key([shift], 'Print', lazy.spawn("scrot -s -e 'mv ~/*.png ~/Images/Screenshots/%Y-%m-%d-%T-screenshot.png'"), desc='Screenshot -select'),
    Key([ctrl], 'Print', lazy.spawn('gnome-screenshot -i'), desc='Gnome Screenshot'),

    # # Spotify Control
    # Key([], 'XF86AudioPlay', lazy.spawn('playerctl play-pause'), desc='Play or Pause Player'),
    # Key([], 'XF86AudioNext', lazy.spawn('playerctl next'), desc='Skip to next'),
    # Key([], 'XF86AudioPrev', lazy.spawn('playerctl previous'), desc='Skip to previous'),
    Key([mod], 'F1', lazy.spawn('playerctl play-pause'), desc='Play or Pause Player'),
    Key([mod], 'F3', lazy.spawn('playerctl next'), desc='Skip to next'),
    Key([mod], 'F2', lazy.spawn('playerctl previous'), desc='Skip to previous'),

    # Screen
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +5%")),
    Key([],"XF86MonBrightnessDown", lazy.spawn('brightnessctl set 5%-')),
    Key([shift], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    Key([shift],"XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),

    # Terminal
    Key([mod], 'Return', lazy.spawn(terminal), desc='Launch terminal'),

    # App Finder
    Key([mod], 'm', lazy.spawn(app_finder), desc='Launch Rofi menu'),

    # Power Menu
    Key([alt, ctrl], 'Delete', lazy.spawn(power_menu), desc='Launch Rofi window menu'),

    # Window Alterner
    Key([alt], 'Tab', lazy.spawn(window_alterning), desc='Launch Rofi window menu'),

    # Browser
    Key([mod], 'b', lazy.spawn(browser), desc='Launch firefox'),

    # File Manager
    Key([mod], 'f', lazy.spawn(file_manager), desc='Launch Ranger file explorer'),

    # Email
    Key([mod], 'c', lazy.spawn(mailing), desc='Launch Thunderbird'),

    # Graphical Editor
    Key([mod], 'e', lazy.spawn(gui_editor), desc='Launch Neovide'),

    # Cli Editor 
    Key([mod, ctrl], 'e', lazy.spawn(cli_editor), desc='Launch Nvim'),

    # Notes
    Key([mod], 'o', lazy.spawn(note_taking), desc='Lauch Obsidian'),

    # Songs
    Key([mod], 's', lazy.spawn(music), desc='Launch Spotify'),

    # PDF Viewer
    Key([mod], 'z', lazy.spawn(pdf_viewer), desc='Lauch Zathura'),

    # Screenkey
    Key([mod, ctrl], 'p', lazy.spawn('screenkey'), desc='Launch screenkey app'),

    # Pavucontrol
    Key([mod], 'p', lazy.spawn('pavucontrol'), desc='Launch Volume center'),

    # Rss
    Key([mod, ctrl], 'f', lazy.spawn('fluent-reader'), desc='Launch Fluent Reader'),

    # Calibre    
    Key([mod, ctrl], 'c', lazy.spawn('calibre'), desc='Launch Calibre'),

    # QuteBrowser    
    Key([mod, ctrl], 'b', lazy.spawn('qutebrowser'), desc='Launch Qutebrowser'),

    # Bluetooth
    Key([mod, shift], 'b', lazy.spawn('blueberry'), desc='Launch bluetooth manager'),

    # Telegram 
    Key([mod], 't', lazy.spawn('telegram-desktop'), desc='Launch Telegram'),
]

for i, group in enumerate(groups):
    screen_number = str((i + 1)%10)
    keys.extend(
        [
            Key(
                [mod],
                screen_number,
                lazy.group[group.name].toscreen(),
                desc='Switch to group {}'.format(group.name),
            ),

            Key(
                [mod, shift],
                screen_number,
                lazy.window.togroup(group.name, switch_group=True),
                desc='Switch to & move focused window to group {}'.format(group.name),
            ),

            Key(
                [mod, ctrl],
                screen_number,
                lazy.window.togroup(group.name),
                desc='move focused window to group {}'.format(group.name)
            ),
        ]
    )
