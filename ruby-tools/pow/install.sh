cd $DOTFILES_ROOT
if ! launchctl list | grep powd > /dev/null
then
  echo "II Installing Pow"
  curl get.pow.cx | sh
fi
cd - > /dev/null
