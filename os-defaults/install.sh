# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store. There's a nifty
# command line interface to it that we can use to just install everything, so
# yeah, let's do that.

if test "$(uname)" = "Darwin"
then
  echo "› sudo softwareupdate -i -a"
  sudo softwareupdate -i -a
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  echo "No Linux defaults found.   😶"
fi