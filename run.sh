sudo apt install flex bison

make clean
make 

sudo modprobe mac80211_hwsim -r
sudo modprobe mac80211
#sudo ln -sf /usr/lib/modules/$(uname -a)/vmlinux.xz /boot/

sudo insmod mac80211_hwsim.ko
