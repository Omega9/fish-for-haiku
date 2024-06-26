# ░░░░░░░░░▒▓▓██████▓▓▒░░░░░░░░░
# ░░░░░░▓████████████████▓▒░░░░░
# ░░░░▓████████████████████▓▒░░░
# ░░▒███████▓▒░░░░░░▒▓███████▓░░
# ░▒██████▓░░░░░░░░░░░░▒██████▓░
# ░██████░░░░░░░░░░░░░░░░▓█████▒
# ▓█████▒░░░░░░▓██▓▒░░░░░░█████▓
# ██████░░░░░░▓█████░░░░░░▓█████
# ▓█████░░░░░░▒▓███▒░░░░░░█████▓
# ▒█████▓░░░░░░░░░░░░░░░░▓█████▒
# ░▒██████▒░░░░░░░░░░░░░▓█████▓░
# ░░▒███████▓▒░░░░░░░░▒██████▓░░
# ████████████▒░░░░░░▒██████████
# ███████████▒░░░░░░▓███████████
# █████████▓░░░░░░░▓████████████
# Eoin Gairleog aka Omega9
# https://omega9.web.app/
# My fish config (Haiku version).

# Set PATH
set -x PATH $PATH /boot/home/config/non-packaged/bin /boot/home/config/bin /boot/system/non-packaged/bin /bin:/boot/system/apps /boot/system/preferences

# Export
set -gx EDITOR StyledEdit
set -gx VISUAL StyledEdit
set -gx BROWSER WebPositive
set --export GIT_EDITOR StyledEdit
set --export QT_QPA_PLATFORMTHEME haiku
# set --export SSH_ASKPASS '/usr/bin/ksshaskpass'
# set --export SSH_ASKPASS_REQUIRE prefer

# Bookmarks directory for to-fish
set -U TO_DIR /boot/home/.tofish

# BobTheFish settings
set -g theme_powerline_fonts yes
set -g theme_color_scheme nord

# Another Nord theme for fish
# source "/boot/home/config/settings/fish/themes/nord.fish"

# Nord color theme for fzf
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

# Done settings
set -U __done_min_cmd_duration 20000
set -U __done_exclude 'git (?!push|pull)'  # default: all git commands, except push and pull. accepts a regex.
set -U __done_notify_sound 0
set -U __done_notification_urgency_level low
set -U __done_notification_urgency_level_failure normal

# Abbreviations
source "/boot/home/config/settings/fish/functions_and_abbreviations.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting -d "Lasita-a diri saluton"
    set_color $fish_color_autosuggestion
    echo "Я полностью работоспособен и все мои цепи функционируют идеально."
    set_color normal
end
