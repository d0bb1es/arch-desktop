FROM archlinux:latest
RUN pacman -Syu --noconfirm --needed base-devel git sudo openssh \
    xfce4 xfce4-terminal tigervnc novnc python-websockify firefox dbus \
 && useradd -m -s /bin/bash vscode \
 && echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode
