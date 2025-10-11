#========= создания папки для dwm =========
mkdir ~/dwm
cd ~/dwm

#========= клонирования репозиториев ==========
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/slstatus
git clone https://github.com/BiBo6613/My-Configs.git
#========= установка конфигов ==========
cd ~/dwm/dwm
rm -f config.h
cd ../My-Configs/dwm_config
mv config.h ../../dwm/dwm/

