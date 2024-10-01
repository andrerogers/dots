# Check if waybar-disabled file exists
if [ -f $HOME/.cache/waybar-disabled ] ;then 
    killall waybar
    pkill waybar
    exit 1 
fi

killall waybar
pkill waybar
sleep 0.2

# Load configuration
config_file="config"
style_file="style.css"

waybar &
