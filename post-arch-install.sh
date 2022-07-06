echo "IMPORTANT: THIS SCRIPT IS STILL IN DEVELEOPEMENT, DO NOT USE ON REAL HARDWARE! Do you wish to continue? (y/N)"
read cont

if [[ $cont == "y" || $cont == "Y"  ]]; then
	sudo pacman -S xorg xorg-xinit picom firefox vim micro nano geany pcmanfm git alacritty bspwm sxhkd polybar htop neofetch nitrogen qt5ct dmenu lxappearance zsh breeze-gtk breeze-icons ttf-fira-code ttf-font-awesome networkmanager starship unzip exa base-devel

	git clone https://aur.archlinux.org/yay.git
	(cd yay && makepkg -si)

	yay -S cava spotify ant-dracula-gtk-theme dracula-icons-gi ly-git arcolinux-logout nerd-fonts-fira-code

	git clone https://gitlab.com/dwt1/wallpapers ~/DTWallpapers
	git clone https://github.com/JJBrindamour/Wallpapers ~/JJWallpapers

	rm -rf ~/.config
	git clone https://github.com/JJBrindamour/Dotfiles ~/.config

	nitrogen --set-scaled ~/JJWallpapers/0041.png

	sudo systemctl enable ly.service
fi
