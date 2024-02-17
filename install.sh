mkdir $HOME/.config/shangar-nvim
cp -r ./config/* $HOME/.config/shangar-nvim
echo "alias svim='NVIM_APPNAME=shangar-nvim nvim'" >> $HOME/.zshrc
