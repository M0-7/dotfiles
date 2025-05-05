# About
Dotfiles for my hyprland+gnome setup. 

![Screenshot](screenshot.png)

## System Info

- OS: Arch Linux
- WM: Hyprland
- Theme: [Adw-gtk3](https://github.com/lassekongo83/adw-gtk3)
- Font: Jetbrains Mono
- Shell: Bash
- Terminal: Alacritty
- Bar: Waybar
- App launcher: Rofi
- Icons: Papirus Icon Theme
- [Wallpaper](https://raw.githubusercontent.com/M0-7/dotfiles/main/Wallpapers/wall.jpg)
- Browser: Firefox

## Installation

### Prerequisite
In order to use the commands yay needs to be setup copy and paste the one liner below to set it up.

```
mkdir -p ~/Documents/git/ && cd ~/Documents/git/ && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

### Arch packages

##### Hyprland
```
yay -S adw-gtk-theme alacritty android-tools apparmor baobab base base-devel bash-completion bat bibata-cursor-theme-bin blueman bluez bluez-utils brightnessctl btop catfish chromium code cups cups-pdf dconf-editor dosfstools efibootmgr eza fastfetch ffmpegthumbnailer firefox flatpak fwupd fzf git github-cli gnome-boxes gnome-calculator gnome-characters gnome-clocks gnome-disk-utility gnome-keyring gnome-text-editor grim gst-plugin-pipewire gtk-engine-murrine gvfs gvfs-mtp gvfs-smb hplip htop hunspell-en_gb hunspell-en_us hypridle hyprland hyprlock hyprpaper hyprsunset imv intel-gpu-tools intel-media-driver intel-ucode inter-font kitty libgsf libpulse libreoffice-still libva-utils linux linux-firmware linux-lts localsend-bin mako man-db mpv neovim networkmanager networkmanager-openvpn nm-connection-editor noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nss-mdns ntfs-3g nwg-look obsidian otf-font-awesome papirus-icon-theme pavucontrol pipewire pipewire-alsa pipewire-jack pipewire-pulse pkgfile playerctl polkit-gnome poppler-glib power-profiles-daemon powertop qrencode reflector rofi-wayland sbctl slurp snapshot sof-firmware speech-dispatcher swaylock syncthing system-config-printer thermald thunar thunar-archive-plugin transmission-gtk ttf-jetbrains-mono ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono tumbler udiskie ufw unrar unzip vpl-gpu-rt vulkan-intel waybar webp-pixbuf-loader wireplumber wl-clipboard xarchiver xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xdg-user-dirs xdg-user-dirs-gtk xorg-xeyes yay zip zoxide zram-generator
```

##### Gnome
```
yay -S adw-gtk-theme alacarte android-tools apparmor baobab base base-devel bash-completion bat bind bluez-utils celluloid chromium code cups cups-pdf dconf-editor dosfstools efibootmgr evince eza fastfetch firefox fwupd fzf gdm git github-cli gnome-backgrounds gnome-boxes gnome-calculator gnome-calendar gnome-characters gnome-clocks gnome-color-manager gnome-console gnome-control-center gnome-disk-utility gnome-font-viewer gnome-keyring gnome-menus gnome-remote-desktop gnome-session gnome-settings-daemon gnome-shell gnome-shell-extensions gnome-system-monitor gnome-text-editor gnome-themes-extra gnome-tweaks gnome-user-docs gnome-user-share grilo-plugins gst-plugin-pipewire gvfs gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd hplip htop hunspell-en_gb hunspell-en_us intel-gpu-tools intel-media-driver intel-ucode inter-font iwd libpulse libreoffice-still libva-intel-driver linux linux-firmware linux-lts loupe malcontent man-db mpv nano nautilus neovim network-manager-applet networkmanager networkmanager-openvpn noto-fonts noto-fonts-cjk noto-fonts-extra nss-mdns ntfs-3g obsidian orca otf-font-awesome pipewire pipewire-alsa pipewire-jack pipewire-pulse pkgfile power-profiles-daemon powertop qbittorrent qt6-wayland reflector rygel sbctl smartmontools snapshot sof-firmware sushi syncthing system-config-printer tecla thermald ttf-jetbrains-mono ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono ufw vulkan-intel wget wireless_tools wireplumber wl-clipboard xdg-desktop-portal-gnome xdg-user-dirs-gtk xdg-utils xorg-server xorg-xev xorg-xeyes xorg-xinit yay yelp zip zoxide zram-generator
```

##### Flatpak applications

```
flatpak install flathub com.stremio.Stremio com.mattjakeman.ExtensionManager com.github.tchx84.Flatseal org.localsend.localsend_app
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
13. Disable kernel watchdog

## Troubleshooting

#### Flatpak apps look out of place

- Flatpak applications don't follow the native system theme, in order to fix this you have to install [this](https://github.com/lassekongo83/adw-gtk3).
- Flatpak cursor doesnt look right follow [this step](https://wiki.archlinux.org/title/Flatpak)

#### Missing fonts

If you didn't use the command above then simply use this command to get started and install all the required fonts. 

```
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono otf-font-awesome gnu-free-fonts inter-font
```
