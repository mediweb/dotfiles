cd $DOTFILES_ROOT
if ! launchctl list | grep powd > /dev/null
then
  echo "II Installing Pow"
  curl get.pow.cx | sh
else
  echo "-- Package Pow already installed"
fi
cd - > /dev/null
