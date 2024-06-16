echo  "installing dependencies via brew"

brew install $(<deps.txt)

brew cleanup

echo "done!"
