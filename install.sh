#!/bin/bash
USER=$(whoami)
CWD=$(pwd)
echo Installing for ${USER}...

ln -sf ${CWD}/.zshrc /home/${USER}/.zshrc
ln -sf ${CWD}/.Xmodmap /home/${USER}/.Xmodmap
ln -sf ${CWD}/.i3blocks.conf /home/${USER}/.i3blocks.conf
ln -sf ${CWD}/.xinitrc /home/${USER}/.xinitrc
ln -sf ${CWD}/.zprofile /home/${USER}/.zprofile
ln -sf ${CWD}/.config/gtk-3.0/settings.ini /home/${USER}/.config/gtk-3.0/settings.ini
ln -sf ${CWD}/.config/i3/config /home/${USER}/.config/i3/config

rm -rf /home/${USER}/.config/xfce4
ln -sfT ${CWD}/.config/xfce4 /home/${USER}/.config/xfce4
rm -rf /home/${USER}/.config/gtk-3.0
ln -sfT ${CWD}/.config/gtk-3.0 /home/${USER}/.config/gtk-3.0
rm -rf /home/${USER}/.i3blocks
ln -sfT ${CWD}/i3blocks /home/${USER}/.i3blocks
rm -rf /home/${USER}/.config/ckb-next
ln -sfT ${CWD}/.config/ckb-next /home/${USER}/.config/ckb-next

echo Done.
