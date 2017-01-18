# cd $DOTFILES_ROOT
# if test ! $(which rabitt)
# then
#   echo "II Installing rabbit"
#   brew install cairo
#   brew link cairo
#   brew link --overwrite pixman
#   brew install pango
#   brew install gtk+
#   brew install poppler --with-glib
#   brew install libsvg
#   echo "Add to your ~/.zshenv: export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib"
#   gem install rabbit
# else
#   echo "-- Package rabbit already installed"
# fi

# cd - > /dev/null
