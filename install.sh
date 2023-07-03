#sudo pacman -S - < pkgs.txt
installable_packages=$(comm -12 <(pacman -Slq | sort) <(sort pkgs.txt))
sudo pacman -S --needed $installable_packages

mkdir ~/.backup_config
cp -r ~/.config/sway ~/.config/waybar ~/.config/wofi ~/.backup_config/
rm -r ~/.config/sway ~/.config/waybar ~/.config/wofi
cp dot_zshrc ~/.zshrc
cp -r dot_config/* ~/.config
cp -r private_dot_local/* ~/.local

echo "========================================================THANKS FOR USING MY DOTS============================================="
