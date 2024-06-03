from libqtile import bar, widget
from libqtile.lazy import lazy

from settings.theme import *
from settings.utils import *
from settings.common import *

#################################################################
# BARS
#################################################################

main_bar = bar.Bar(
    [
        widget.GroupBox(
            active=group_box['active'],
            inactive=group_box['inactive'],
            borderwidth=group_box['border_width'],
            disable_drag=group_box['disable_grab'],
            fontsize=theme['icon_size'],
            foreground=group_box['foreground'],
            background=group_box['background'],
            highlight_method=group_box['highlight'],
            margin_x=0,
            margin_y=3,
            padding_x=0,
            padding_y=10,
            this_current_screen_border=group_box['this_current_screen_border'],
            this_screen_border=group_box['this_screen_border'],
            other_current_screen_border=group_box['other_current_screen_border'],
            other_screen_border=group_box['other_screen_border'],
            urgent_alert_method=group_box['urgent'],
            urgent_border=group_box['urgent_color'],
        ),
        set_icon(' ', group_box['background']),
        widget.Prompt(
            foreground=layout_colors['foreground'],
            background=layout_colors['background']
        ),
        section_corner(group_box['background'], window_name['background'], 2),
        set_icon(' ', window_name['background']),
        widget.WindowName(
            foreground=window_name['text_color'],
            background=window_name['background'],
            max_chars=window_name['max_chars']
        ),
        # widget.Spacer(
        #     foreground=window_name['text_color'],
        #     background=window_name['background'],
        # ),
        set_icon(' ', window_name['background']),

        # Group One
        section_corner(group_colors[1], window_name['background'], 3),
        widget.Systray(
            icon_size=icons['size'],
            background=group_colors[1],
        ),

        # Group Two
        section_corner(group_colors[2], group_colors[1], 3),
        set_icon(' ', group_colors[2]),
        set_icon(icons['therm'], group_colors[2]),
        widget.ThermalSensor(
            foreground=theme['foreground'],
            background=group_colors[2],
            threshold=50,
            fmt= '{}'
        ),
        set_icon(
            icons['ram'],
            group_colors[2],
            mouse_callbacks = {
                'Button1': lazy.spawn(terminal + ' --title System -e htop'),
                'Button3': lazy.spawn(terminal + ' --title System -e btop')
            },
        ),
        widget.Memory(
            foreground=theme['foreground'],
            background=group_colors[2],
            fmt = '{}',
            measure_mem = 'M', #'G', 'M'
            mouse_callbacks = {
                'Button1': lazy.spawn(terminal + ' --title System -e htop'),
                'Button3': lazy.spawn(terminal + ' --title System -e btop')
            },
        ),
        widget.TextBox(
            text=icons['terminal'], # nf-oct-terminal
            fontsize=icons['size'],
            foreground=theme['foreground'],
            background=group_colors[2],
            mouse_callbacks={
                'Button1': lazy.spawn(terminal),
                'Button2': lazy.spawn(terminal + ' -e tmux'),
                'Button3': lazy.spawn('alacritty'),
            }
        ),

        # Group Three
        section_corner(group_colors[3], group_colors[2], 3),
        set_icon(' ', group_colors[3]),
        widget.Clock(
            foreground=theme['foreground'],
            background=group_colors[3],
            format=' %A, %d %B', 
            mouse_callbacks={
                'Button1': lazy.spawn(calendar),
            },
        ),
        set_icon('│', group_colors[3]),
        widget.Clock(
            foreground=theme['foreground'],
            background=group_colors[3],
            format=' %H:%M %p', 
            mouse_callbacks={
                'Button1': lazy.spawn(terminal + ' --title Clock -e tty-clock -csSB'),
            },
        ),

        # Group Four
        section_corner(group_colors[4], group_colors[3], 3),
        set_icon(' ', group_colors[4]),
        set_icon(' ', group_colors[4]), # nf-fa-window_maximize
        widget.CurrentLayout(
            foreground=theme['foreground'],
            background=group_colors[4]
        ),
        set_icon('│', group_colors[4]),
        widget.TextBox(
            text=icons['power'], # nf-oct-terminal
            fontsize=icons['size'],
            foreground=theme['foreground'],
            background=group_colors[4],
            mouse_callbacks={
                'Button1': lazy.spawn(power_menu),
                'Button3': lazy.spawn(power_menu),
            }
        ),
    ],
    24,
)
