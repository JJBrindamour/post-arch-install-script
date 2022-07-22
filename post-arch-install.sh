!/usr/bin/bash

echo "IMPORTANT: THIS SCRIPT IS STILL IN DEVELEOPEMENT, DO NOT USE ON REAL HARDWARE!"
read -p " Do you wish to continue? (y/N): " contin

if [[ $contin == "y" || $contin == "Y"  ]]; then
	sudo pacman -S xorg xorg-xinit picom firefox vim micro nano geany pcmanfm git alacritty bspwm sxhkd polybar htop neofetch nitrogen qt5ct dmenu lxappearance zsh breeze-gtk breeze-icons ttf-fira-code ttf-font-awesome networkmanager starship unzip exa base-devel

	git clone https://aur.archlinux.org/yay.git $HOME/yay
	(cd $HOME/yay && makepkg -si)

	yay -S cava spotify ant-dracula-gtk-theme dracula-icons-git ly-git arcolinux-logout nerd-fonts-fira-code

	git clone https://gitlab.com/dwt1/wallpapers $HOME/DTWallpapers
	git clone https://github.com/JJBrindamour/Wallpapers $HOME/JJWallpapers

	rm -rf $HOME/.config
	git clone https://github.com/JJBrindamour/Dotfiles $HOME/.config

	mv $HOME/.config/.zshrc $HOME/
	mv $HOME/.config/.bashrc $HOME/
	mv $HOME/.config/.config $HOME/.config

	nitrogen --set-scaled ~/JJWallpapers/0041.png

	sudo systemctl enable ly.service
fi
