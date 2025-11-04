pkm in termux-am
termux-setup-storage
echo -e "GameMT Installer"
echo -e  "${BOLD}Hi!${NONE} We're gonna start configuring your ${PURPLE}E6 Console${NONE}"
echo -e  "${BOLD}We recommend you to hide the virtual keyboard by swiping from the left of the screen.${NONE}"
read pause

apt-get update && 
	apt-get -o "Dpkg::Options::=--force-confold"  upgrade -q -y --force-yes &&
	apt-get -o "Dpkg::Options::=--force-confold"  dist-upgrade -q -y --force-yes
pkg autoclean
pkg update -y && pkg upgrade -y
pkg install git wget jq rsync unzip whiptail binutils build-essential liblz4 libuv ninja -y
read pause

echo -e "Downloading Vapor Launcher, please be patient..."
wget   -q --show-progress https://github.com/imperador/vapor-launcher/releases/download/v0.10.2-beta/imperador.vapor.android_v0.10.2-beta.apk -P ~/storage/shared
echo -e "Open your file manager and install it, then press the ${PURPLE} B or A Button.${NONE}"
read pause

echo -e "Downloading Retroarch, please be patient..."
wget   -q --show-progress https://buildbot.libretro.com/stable/1.21.0/android/RetroArch_aarch64.apk -P ~/storage/shared
echo -e "Open your file manager and install it, then press the ${PURPLE} B or A Button.${NONE}"
read pause
