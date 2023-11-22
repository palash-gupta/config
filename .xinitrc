~/.fehbg &

while true; do
    xsetroot -name "    $(free --mega | grep Mem | awk '{print $3 "/" $2 "MB"}') | $(/home/reiter/scripts/status/batteryicon.sh) | $( date +"󰃭 %A, %d %B |   %R" ) "
    sleep 2s
done &

# xcompmgr -f -r 5  -O .0.37 &
# picom &
picom -f -c --backend glx --blur-method dual_kawase --blur-strength 8 &
exec dwm
