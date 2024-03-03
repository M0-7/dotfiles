# About
Dotfiles for my hyprland+gnome setup. 

![Screenshot](screenshot.png)

## System Info

- OS: Arch Linux
- WM: Hyprland
- Theme: [Dracula](https://draculatheme.com/gtk)
- Font: Jetbrains Mono Nerd Font
- Shell: Bash
- Terminal: Alacritty
- Bar: Waybar
- App launcher: Fuzzel
- Icons: Papirus Icon Theme
- [Wallpaper](https://raw.githubusercontent.com/M0-7/dotfiles/main/Wallpapers/wallpaper.jpg)
- Browser: Firefox with betterfox

## Installation

#### Arch packages

```
yay -S gnome gnome-tweaks protonvpn-cli hplip fwupd zram-generator wget neovim gnome-characters powertop intel-gpu-tools intel-media-driver ffmpeg ffmpegthumbnailer android-tools bash-completion qrencode ufw transmission-gtk git xdg-user-dirs-gtk xdg-user-dirs noto-fonts noto-fonts-emoji ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts hyprland papirus-icon-theme firefox alacritty pkgfile eza bat waybar dconf-editor hyprpaper mako nwg-look obsidian pcmanfm pavucontrol swaylock sbctl brightnessctl wl-clipboard network-manager-applet blueman fuzzel element-desktop github-cli swaylock swayidle mako polkit-gnome gnome-keyring udiskie cliphist btop xorg-xeyes vscodium-bin chromium wlogout speech-dispatcher hunspell-en_US cups bluez bluez-utils blueman neofetch xarchiver gvfs zip grim slurp flatpak gedit htop imv gnome-boxes torbrowser-launcher gnome-disk-utility zathura zathura-pdf-mupdf font-manager apparmor python-notify2 python-psutil libreoffice-still mpv android-file-transfer gnome-calculator gnome-power-manager
```

#### Flatpak applications

```
flatpak install flathub com.obsproject.Studio com.github.tenderowl.frog com.github.tchx84.Flatseal org.raspberrypi.rpi-imager org.localsend.localsend_app
```

#### Things to setup
1. Zram
2. Cups
3. UFW
4. Themes (drcula for gtk)
5. Mac Adress Randomisation
6. App Armor setup

## Troubleshooting

#### Flatpak apps look out of place

Flatpak applications don't follow the native system theme in order to fix this you have to do [these steps](https://itsfoss.com/flatpak-app-apply-theme/).

#### Missing fonts

If you didn't use the command above then simply use this command to get started and install all the required fonts. 

```
sudo pacman -S noto-fonts noto-fonts-emoji ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts
```
