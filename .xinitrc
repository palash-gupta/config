source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

echo no > /tmp/battery-notification
echo discharging > /tmp/battery-charging-notification

feh --no-fehbg --bg-scale --randomize -r /home/reiter/Pictures/wallpapers/

while true; do
    xsetroot -name "    $(free --mega | grep Mem | awk '{print $3 "/" $2 "MB"}') | $(/home/reiter/scripts/status/batteryicon.sh) | $( date +"󰃭 %A, %d %B |   %R" ) "
    sleep 2s
done &

# xcompmgr -f -r 5  -O .0.37 &
# picom &
picom -f -c -D 6 --backend glx --blur-method dual_kawase --blur-strength 8 --vsync --detect-rounded-corners --shadow-exclude 'bounding_shaped && rounded_corners' --inactive-dim 0.3 &
emote &
exec dwm
