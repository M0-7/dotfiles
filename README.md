# About
Dotfiles for my hyprland+gnome setup. 

![Screenshot](screenshot.png)

## System Info

- OS: Arch Linux
- WM: Hyprland
- Theme: [Adw-gtk3](https://github.com/lassekongo83/adw-gtk3)
- Font: Jetbrains Mono Nerd Font
- Shell: Bash
- Terminal: Alacritty
- Bar: Waybar
- App launcher: Fuzzel
- Icons: Papirus Icon Theme
- [Wallpaper](https://raw.githubusercontent.com/M0-7/dotfiles/main/Wallpapers/wallpaper.jpg)
- Browser: Firefox with [Betterfox](https://github.com/yokoffing/BetterFox)

## Installation

### Prerequisite
In order to use the commands yay needs to be setup copy and paste the one liner below to set it up.

```
mkdir -p ~/Documents/git/ && cd ~/Documents/git/ && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

### Arch packages

##### Hyprland+Gnome
```
yay -S power-profiles-daemon obsidian gnome gnome-themes-extra man reflector gnome-tweaks hplip dosfstools ntfs-3g xdg-desktop-portal-hyprland fwupd nss-mdns neovim powertop intel-gpu-tools intel-media-driver ffmpeg ffmpegthumbnailer android-tools bash-completion qrencode ufw qbittorrent git system-config-printer xdg-user-dirs-gtk xdg-user-dirs noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts inter-font hyprland papirus-icon-theme firefox alacritty pkgfile eza bat waybar dconf-editor hyprpaper mako nwg-look zoxide fzf pavucontrol swaylock sbctl brightnessctl wl-clipboard network-manager-applet blueman fuzzel github-cli swaylock hypridle mako polkit-gnome gnome-keyring udiskie cliphist xorg-xeyes vscodium-bin brave-bin wlogout speech-dispatcher hunspell-en_gb hunspell-en_us cups bluez bluez-utils blueman fastfetch tumbler thunar-volman thunar-archive-plugin thunar gvfs gvfs-mtp unzip zip grim slurp flatpak gedit htop imv gnome-boxes gnome-disk-utility zathura zathura-pdf-mupdf gnome-font-viewer apparmor libreoffice-still mpv gnome-calculator gnome-firmware
```

##### Hyprland
```
yay -S hplip fwupd obsidian reflector power-profiles-daemon man dosfstools ntfs-3g nss-mdns neovim gnome-characters xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xdg-desktop-portal powertop intel-gpu-tools intel-media-driver ffmpeg ffmpegthumbnailer android-tools bash-completion qrencode ufw qbittorrent git xdg-user-dirs-gtk xdg-user-dirs noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts inter-font system-config-printer hyprland papirus-icon-theme firefox alacritty pkgfile eza bat waybar dconf-editor hyprpaper mako nwg-look zoxide fzf pavucontrol swaylock sbctl brightnessctl wl-clipboard network-manager-applet blueman fuzzel github-cli swaylock hypridle mako polkit-gnome gnome-keyring udiskie cliphist xorg-xeyes vscodium-bin brave-bin wlogout speech-dispatcher hunspell-en_gb hunspell-en_us cups bluez bluez-utils blueman fastfetch tumbler thunar-volman thunar-archive-plugin thunar gvfs gvfs-mtp unzip zip grim slurp flatpak gedit htop imv gnome-boxes gnome-disk-utility zathura zathura-pdf-mupdf gnome-font-viewer apparmor libreoffice-still mpv gnome-calculator gnome-firmware
```

##### Gnome
```
yay -S gnome obsidian gnome-themes-extra power-profiles-daemon man bluez bluez-utils reflector gnome-tweaks hplip dosfstools ntfs-3g fwupd nss-mdns neovim powertop intel-gpu-tools intel-media-driver android-tools bash-completion qrencode ufw qbittorrent git noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts inter-font firefox pkgfile eza bat zoxide fzf sbctl github-cli xorg-xeyes vscodium-bin brave-bin speech-dispatcher hunspell-en_gb hunspell-en_us cups system-config-printer fastfetch unzip zip flatpak htop gnome-boxes apparmor libreoffice-still mpv alacarte adw-gtk-theme syncthing networkmanager-openvpn wl-clipboard
```

##### Flatpak applications

```
flatpak install flathub com.stremio.Stremio md.obsidian.Obsidian im.riot.Riot com.mattjakeman.ExtensionManager net.nokyan.Resources com.github.tchx84.Flatseal org.raspberrypi.rpi-imager org.localsend.localsend_app
```

## Things to setup
1. Enable secure boot with sbctl and use TPM(PCRS:0+7)
2. Cups + Enable avahi daemon socket for discovery
3. Ufw (Add port mdns,qbittorrent,syncthing,53317)
4. Theme (Adw-gtk-3 for gtk)
5. Mac Adress Randomisation and wifi powersave disable
6. App Armor setup
7. Edit /boot/loader/loader.conf and enable bootloader update service
8. Enable bluetooth and thermald service
9. Edit /etc/makepkg.conf and remove debug
10. Change X11 keyboard layout
11. Reflector setup
12. Add pacman eye candy options
13. Disable kernel watchdog and zram optimisation

## Troubleshooting

#### Flatpak apps look out of place

- Flatpak applications don't follow the native system theme, in order to fix this you have to install [this](https://github.com/lassekongo83/adw-gtk3).
- Flatpak cursor doesnt look right follow [this step](https://wiki.archlinux.org/title/Flatpak)

#### Missing fonts

If you didn't use the command above then simply use this command to get started and install all the required fonts. 

```
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts inter-font
```
