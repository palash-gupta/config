source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

echo no > /tmp/battery-notification
echo 0 > /tmp/audio-sink
echo discharging > /tmp/battery-charging-notification
echo "/home/reiter" > /tmp/wd
mkdir -p /tmp/screenshots

#feh --no-fehbg --bg-scale --randomize -r /home/reiter/Pictures/wallpapers/outer-wilds/1_copy.webp
/home/reiter/.fehbg


while true; do
    xsetroot -name "$(/home/reiter/scripts/status/statusbar.sh)"
    sleep 2s
done &

# xcompmgr -f -r 5  -O .0.37 &
#picom -f -c -D 6 --backend glx --blur-method dual_kawase --blur-strength 8 --vsync --detect-rounded-corners --shadow-exclude 'bounding_shaped && rounded_corners' --inactive-dim 0.3 &
picom &

emacs --daemon &

xset r rate 300 50
setxkbmap -option "caps:swapescape"
exec dwm
