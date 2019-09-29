DOTFILES_SOURCE="$HOME/dotfiles"
for DOTFILE in `find $DOTFILES_SOURCE`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
