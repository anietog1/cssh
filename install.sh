echo "Installing cssh"
mkdir -p $HOME/.local/bin
cp cssh.sh $HOME/.local/bin/cssh
chmod +x $HOME/.local/bin/cssh

echo "Creating profiles folder"
mkdir -p $HOME/.local/etc/cssh

echo "Creating example profile"
cp example.cssh $HOME/.local/etc/cssh/example

echo "Please add $HOME/.local/bin to your PATH"
