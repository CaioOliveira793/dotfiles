#package:zsh-history-substring-search
#repo:https://github.com/zsh-users/zsh-history-substring-search
zsh_history_substring_search_path='/usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh';
if [ -f $zsh_history_substring_search_path ]; then
  source $zsh_history_substring_search_path;

  # only unique search results are presented
  HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE='1'

  autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
  zle -N up-line-or-beginning-search
  zle -N down-line-or-beginning-search

  bindkey $zsh_key_up   up-line-or-beginning-search;
  bindkey $zsh_key_down down-line-or-beginning-search;
fi


#package:zsh-syntax-highlighting
#repo:https://github.com/zsh-users/zsh-syntax-highlighting
zsh_syntax_highlighting_path='/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh';
if [ -f $zsh_syntax_highlighting_path ]; then
  source $zsh_syntax_highlighting_path;
fi


#package:zsh-autosuggestions
#repo:https://github.com/zsh-users/zsh-autosuggestions
zsh_autosuggestions_path='/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh';
if [ -f $zsh_autosuggestions_path ]; then
  source $zsh_autosuggestions_path;

  # specifies how suggestions should be generated.
  ZSH_AUTOSUGGEST_STRATEGY=(history completion);

  # disable autosuggestion for large buffers.
  ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=32;

  bindkey $zsh_key_ctrl_space autosuggest-accept;
fi
