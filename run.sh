sudo apt update && sudo apt upgrade -y
sudo apt remove --purge linux-headers-* -y
sudo apt autoremove && sudo apt autoclean -y
sudo apt install linux-headers-generic -y
make clean
make 

sudo modprobe mac80211_hwsim -r
sudo modprobe mac80211
sudo ln -sf /usr/lib/modules/$(uname -a)/vmlinux.xz /boot/

sudo insmod mac80211_hwsim.ko
