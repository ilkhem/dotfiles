#!/bin/sh

if [ ! -d "$ZSH" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
if [ -d "$ZSH_CUSTOM" ]; then
        if [! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"]; then
                git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
        fi
fi

[[ -f "zsh/ilyes.zsh-theme"]] && cp "zsh/ilyes.zsh-theme" "$ZSH/themes/"
