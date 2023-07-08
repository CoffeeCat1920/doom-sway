#sudo pacman -S - < pkgs.txt
installable_packages=$(comm -12 <(pacman -Slq | sort) <(sort pkgs.txt))
sudo pacman -S --needed $installable_packages


echo "Making Backup Directory"
mkdir ~/.backup_config
echo "Removing old dot"
cp -r ~/.config/sway ~/.config/waybar ~/.config/wofi ~/.backup_config/
rm -r ~/.config/sway ~/.config/waybar ~/.config/wofi
echo "Coping new dots"
cp dot_zshrc ~/.zshrc
cp -r dot_config/* ~/.config
cp -r private_dot_local/bin/* ~/.local/bin/

echo "========================================================THANKS FOR USING MY DOTS============================================="
