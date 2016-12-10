set __fish_git_prompt_color_branch yellow

set __fish_git_prompt_char_upstream_prefix ' '
set __fish_git_prompt_char_stateseparator ''

set __fish_git_prompt_show_informative_status true
set __fish_git_prompt_color_upstream_ahead purple
set __fish_git_prompt_char_upstream_ahead ' ↑'
set __fish_git_prompt_color_upstream_behind purple
set __fish_git_prompt_char_upstream_behind ' ↓'

set __fish_git_prompt_color_untrackedfiles red
set __fish_git_prompt_char_untrackedfiles ' *'

set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_char_dirtystate ' ±'

set __fish_git_prompt_color_stagedstate purple
set __fish_git_prompt_char_stagedstate ' ⇈'

set __fish_git_prompt_showuntrackedfiles true
set __fish_git_prompt_color_cleanstate 777
set __fish_git_prompt_char_cleanstate ''

function __prompt_current_dir
  echo (set_color -o yellow)(pwd | sed "s:^$HOME:~:")(set_color normal)
end

function __prompt_prompt
  if set -q SSH_CLIENT; or set -q SSH_TTY
    echo ⚡️
  else
    echo (set_color -o blue)➜(set_color -o normal)
  end
end

function fish_prompt
  echo -n (__prompt_current_dir)" "
  echo -n (__fish_git_prompt '%s')" "
  echo -n (__prompt_prompt)" "
end
