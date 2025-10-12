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
sudo make clean install
cd ../dmenu
sudo make clean install
