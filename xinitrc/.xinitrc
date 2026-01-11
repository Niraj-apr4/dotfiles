# walpaper
~/.fehbg &

# Color temperature adjustment based on time of day
# 6 AM to 6 PM: 5000K (cooler/bluer light)
# 6 PM to 6 AM: 4000K (warmer light)

current_hour=$(date +%H)

if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 18 ]; then
    # Daytime: 6 AM (06) to 6 PM (18) - use 5000K
    redshift -O 5000 &
else
    # Nighttime: 6 PM to 6 AM - use 4000K
    redshift -O 4000 &
fi

# Your other xinitrc commands go here
# exec your-window-manager
picom -b
exec dwm
