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
wget   -q --show-progress https://github.com/imperador/vapor-launcher/releases/download/v0.10.2-beta/imperador.vapor.android_v0.10.2-beta.apk -P ~/
termux-open ~/imperador.vapor.android_v0.10.2-beta.apk
read -n 1 -s -r -p "Press any button to continue..."


echo -e "Downloading Retroarch, please be patient..."
wget   -q --show-progress https://buildbot.libretro.com/stable/1.21.0/android/RetroArch_aarch64.apk -P ~/
termux-open ~/Retroarch_aarch64.apk
read -n 1 -s -r -p "Press any button to continue..."

echo -e "Downloading Flycast, please be patient..."
wget   -q --show-progress https://flycast-builds.s3.fr-par.scw.cloud/android/heads/master-bf2bd7efed41e9f3367a764c2d90fcaa9c38a1f9/flycast-release.apk -P ~/
termux-open ~/flycast-release.apk
read -n 1 -s -r -p "Press any button to continue..."

echo -e "Downloading PPSSPP, please be patient..."
wget   -q --show-progress https://www.ppsspp.org/files/1_19_3/ppsspp.apk -P ~/
termux-open ~/ppsspp.apk
read -n 1 -s -r -p "Press any button to continue..."

echo -e "Downloading Dolphin, please be patient..."
wget   -q --show-progress https://github.com/Medard22/Dolphin-MMJR2-VBI/releases/download/U24.07.02-2407/Dolphin.MMJR2-VBI-U24.07.02-2407.apk -P ~/
termux-open ~/Dolphin.MMJR2-VBI-U24.07.02-2407.apk


clear
echo -e "FINISH"
read -n 1 -s -r -p "Press any button to close."
am startservice -a com.termux.service_stop com.termux/.app.TermuxService &> /dev/null
