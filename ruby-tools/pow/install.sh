cd $DOTFILES_ROOT
if launchctl list | grep powd > /dev/null
then
  echo "II Uninstalling Pow"
  curl get.pow.cx/uninstall.sh | sh
fi
cd - > /dev/null
