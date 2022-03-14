#! /bin/bash
# arr=("sxhkd" "xfce4-power-manager" "copyq" "fcitx5" "dunst" "xdman" "qv2ray" "redshift-gtk" "mpd" "picom" "conky" "~/.config/bspwm/bin/bspbar")
arr=( "sxhkd" "fcitx5" "picom" "optimus-manager-qt" "nm-applet" )
for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | grep -v grep | wc -l`
    if [ $isExist == 0 ]
    then
        exec "$value" &
    fi
done
# picom 
# optimus-manager-qt
# nm-applet
xrandr --dpi 108 --output eDP-1 &
/usr/bin/feh --bg-center /home/daoist/Pictures/firewatch/illust_84655195_20201001_013416.jpg &
# exec "/usr/bin/feh" "--bg" "/home/daoist/Pictures/firewatch/illust_84655195_20201001_013416.jpg"
bash /home/daoist/.config/polybar/launch.sh 
