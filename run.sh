make clean
make
sudo modprobe mac80211
sudo modprobe mac80211_hwsim -r
sudo insmod mac80211_hwsim.ko
