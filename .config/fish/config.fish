alias vim 'nvim'
alias ls 'exa --group-directories-first --git --icons'
set -g EDITOR nvim

# Install fundle
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

if [ "$XDG_SESSION_TYPE" != "tty" ] 
  fundle plugin oh-my-fish/theme-bobthefish
else if [ "$COLORTERM" = "kmscon" ]
  fundle plugin oh-my-fish/theme-bobthefish
end

fundle plugin jethrokuan/fzf
fundle plugin Alsan/grc 
fundle plugin patrickf1/colored_man_pages.fish

fundle init

# For nvim/vim quick startup 
set PYTHON3_HOST_PROG (which python)

set -g theme_display_git yes
set -g theme_display_vagrant no 
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no 
set -g theme_display_hg no 
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_nvm no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date yes 
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes 
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs no 
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
# set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor no
# set -g theme_newline_prompt '$ '
