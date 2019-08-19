#Albaro's .zshrc conf file

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh;

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# This is a nice theme, with a time stamp and git info
export ZSH_THEME="ys";

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true";

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true";

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true";

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy";

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git);

source $ZSH/oh-my-zsh.sh;

# User configuration
alias ls="ls -GlAhF";

# The following setting need special requirements
# pkg install vim | apt-get install vim | brew install vim
#alias vi="vim";
# pkg install emacs25 | apt-get install emacs | brew install emacs
#alias e="emacs";
# pkg install bat | apt-get install bat | brew install bat
#alias cat="bat"
