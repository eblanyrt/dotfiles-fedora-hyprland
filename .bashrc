# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export PATH="$PATH:/opt/lampp/bin"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# PS1='\[\e[38;2;250;120;255m\]\u@\h \[\e[38;2;250;120;255m\]\w\[\e[0m\]\$ '

# Use starship.rs
eval "$(starship init bash)"

# Variable for Hyprshot save directory
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"

. "$HOME/.cargo/env"

# Initialize colorscript when launching terminal
colorscript -e crunchbang-mini

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
