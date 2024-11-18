#!/usr/bin/sh

dnf install akmod-nvidia \
	xorg-x11-drv-nvidia-cuda xorg-x11-drv-nvidia-cuda-libs \
	xorg-x11-drv-nvidia-power \
	nvidia-vaapi-driver libva-utils vdpauinfo

grubby --update-kernel=ALL --args='nvidia-drm.modeset=1'


cat << EOF | tee /etc/dracut.conf.d/nvidia.conf
add_drivers+=" nvidia nvidia_modeset nvidia_uvm nvidia_drm "
install_items+=" /etc/modprobe.d/nvidia.conf "
EOF

cat << EOF | tee /etc/modprobe.d/nvidia.conf
options nvidia_drm modeset=1
EOF

while pgrep akmod; do
	sleep 5
done

dracut --regenerate-all --force
