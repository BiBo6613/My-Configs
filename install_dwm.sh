#========= установка покетов =========
sudo pacman -S git kitty firefox
#========= создания папки для dwm =========
mkdir ~/wm
cd ~/wm
#========= клонирования репозиториев ==========
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/slstatus
#========= установка конфигов ==========
cp ~/My-Configs/dwm_config/config.h ~/wm/dwm/
cp ~/My-Configs/dwm_config/start_dwm.sh ~/wm
chmod +x ~/wm/start_dwm.sh
cd ~/wm/dwm/
wget https://dwm.suckless.org/patches/center/dwm-center-6.2.diff
patch < dwm-center-6.2.diff
sudo make clean install
cd ../dmenu
sudo make clean install
#========= установка обоев =========
mkdir ~/wm/wallpapers
cp ~/My-Configs/wallpapers/* ~/wm/wallpapers/
chmod +x ~/wm/wallpapers/feh_config.sh
cd ~
#========= клонирования репозитория aur ========
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#========= установка конфига kitty ========
mkdir ~/.config/kitty/
cp ~/My-Configs/dwm_config/kitty.conf ~/.config/kitty/dwm_config
#========= установка xinitrc =========
cp ~/My-Configs/dwm_config/.xinitrc ~/.xinitrc