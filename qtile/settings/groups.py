from libqtile.config import Group, Match

#################################################################
# GROUPS
#################################################################

# Nerd font list 
# 1. nf-linux-archlinux 
# 2. nf-fa-firefox 
# 3. nf-fa-terminal 
# 4. nf-fa-code 
# 5. nf-fa-folder_open 
# 6. nf-dev-vim 
# 7. nf-fae-python    nf-fa-steam_square 
# 8. nf-fae-telegram 
# 9. nf-fa-spotify 
# 10. nf-fa-dropbox 

groups = [
    Group('  '),
    Group('  '),
    Group('  '),
    Group('  '),
    Group('  '),
    Group('  '),
    Group('  '),
    Group('  ', matches=[Match(wm_class='thunderbird')]),
    Group('  '),
    Group('  '),
]
