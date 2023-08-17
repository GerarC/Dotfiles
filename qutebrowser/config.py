from qutebrowser.config.configfiles import ConfigAPI 
from qutebrowser.config.config import ConfigContainer
from qutebrowser.api import interceptor
from settings.adblock import filter_youtube
from settings.common import *


#================= Config Variables =================#
config: ConfigAPI = config
c: ConfigContainer = c

#================= adblocking methods =================#
interceptor.register(filter_youtube)
c.content.blocking.method = blocking_method

#================= Keybindings =================#
# Special Format Yanking
config.bind('<y><o>', 'yank inline [[{url}][{title}]]')

# Open notes from Qutebrowser
config.bind('gn', notecmd)


#================= Redline Insert Mode =================#
c.editor.command = [
    term,
    '-e',
    editor,
    '-f',
    '{file}',
    '-c'
    'normal {line}G{column0}1',
]

#================= Load AutoConfig =================#
config.load_autoconfig()

