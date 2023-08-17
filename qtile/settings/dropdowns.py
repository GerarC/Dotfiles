from libqtile.config import DropDown, Key, ScratchPad
from settings.groups import groups
from settings.keys import keys
from settings.common import *

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
                       y=0,

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
                       'Sound Config',
                       'pavucontrol',
                       opacity=1,
                       height=0.6,
                       width=0.6,
                       x=0.2,
                       y=0.0,

                   ),
               ]
    )
])

keys.extend(
    [
        Key([], 'F2', lazy.group['scratch'].dropdown_toggle('term')),
        Key([], 'F10', lazy.group['scratch'].dropdown_toggle('spot')),
        Key([alt], 'F2', lazy.group['scratch'].dropdown_toggle('pavu')),
    ]
)
