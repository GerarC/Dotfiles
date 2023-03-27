local g = vim.g

g.webdevicons_enable_startify = 1
g.startify_enable_special = 0
g.startify_session_autoload = 1
g.startify_session_delete_buffers = 1
g.startify_change_to_vcs_root = 1
g.startify_fortune_use_unicode = 1
g.startify_session_persistence = 1

g.startify_lists = {
    { 
        type = 'bookmarks',
        header = { '   Bookmarks' } 
    },
    {
        type = 'files',
        header = { '   Recent Files' }
    },
    {
        type = 'sessions',
        header = { '    Sessions' }
    },
}

g.startify_session_dir = '~/.config/nvim/session'

g.startify_bookmarks = {
     { a = '~/.config/qtile/autostart.sh'},
     { b = '~/.bashrc'},
     { c = '~/.config/qtile/config.py'},
     { d = '~/.config/qutebrowser'},
     { i = '~/.config/nvim/init.lua'},
     { r = '~/.config/ranger'},
     { z = '~/.zshrc'},
}

g.startify_session_before_save = { 'silent! tabdo NERDTreeClose' }
