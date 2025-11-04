pkm in termux-am
termux-setup-storage
echo -e "GameMT Installer"
echo -e  "${BOLD}Hi!${NONE} We're gonna start configuring your ${PURPLE}E6 Console${NONE}"
echo -e  "${BOLD}We recommend you to hide the virtual keyboard by swiping from the left of the screen.${NONE}"
read -n 1 -s -r -p "Press any button to continue..."

pkg update -y && pkg upgrade -y
pkg install wget -y
read -n 1 -s -r -p "Press any button to continue..."

echo -e "Downloading Vapor Launcher, please be patient..."
wget   -q --show-progress https://github.com/imperador/vapor-launcher/releases/download/v0.10.2-beta/imperador.vapor.android_v0.10.2-beta.apk -P ~/storage/shared
read -n 1 -s -r -p "Press any button to continue..."


echo -e "Downloading Retroarch, please be patient..."
wget   -q --show-progress https://buildbot.libretro.com/stable/1.21.0/android/RetroArch_aarch64.apk -P ~/storage/shared
read -n 1 -s -r -p "Press any button to continue..."
