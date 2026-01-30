ls -Al
cd ~/work/openwrt-ax5-jdc/openwrt-ax5-jdc/openwrt
make menuconfig

enter_menuconfig
rm /tmp/keep-term
nano /home/runner/work/openwrt-ax5-jdc/openwrt-ax5-jdc/openwrt/custom_release_notes.txt
tail -F build-log.log
