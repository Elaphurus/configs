# ignore case
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/Applications/CMake.app/Contents/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/flex/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/Users/hmz/Projects/souffle/build/src:$PATH"
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_333.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH="/opt/gradle/gradle-7.5/bin:$PATH"

# Racket shell completion
export PATH="/Applications/Racket v8.6/bin:$PATH"
# /usr/local/share/zsh/site-functions/_racket
autoload _racket
_racket

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib -L/usr/local/opt/ncurses/lib -L/usr/local/opt/libffi/lib -L/usr/local/opt/bison/lib -L/usr/local/opt/flex/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include -I/usr/local/opt/ncurses/include -I/usr/local/opt/libffi/include -I/usr/local/opt/flex/include"

export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig:/usr/local/opt/sqlite/lib/pkgconfig:/usr/local/opt/ncurses/lib/pkgconfig:/usr/local/opt/libffi/lib/pkgconfig"

alias setproxy="
	export  http_proxy=http://127.0.0.1:10080;
	export https_proxy=http://127.0.0.1:10080;
"

