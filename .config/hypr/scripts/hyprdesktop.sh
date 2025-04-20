#!/bin/bash
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu'
sleep 2
killall -e xdg-desktop-portal-hyprland
killall xdg-desktop-portal
killall xdg-desktop-portal-gtk
killall xdg-desktop-portal-gnome
killall xdg-desktop-portal-kde

/usr/lib/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
/usr/lib/xdg-desktop-portal-gtk &
