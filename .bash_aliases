#alias lock="mate-screensaver-command -l"
alias lock="xscreensaver-command -lock"
alias fixdpi="xrandr --dpi 192"
alias volume="mate-volume-control"
alias controlcenter="mate-control-center"

# backlight control requires xbacklight package.
# or use: sudo su echo 300 > /sys/class/backlight/intel_backlight/brightness
# this method will write directly to the screen brightness level.
#alias backlightup="xbacklight -inc 30"
#alias backlightdown="xbacklight -dec 30"
BACKLIGHT="/sys/class/backlight/intel_backlight/brightness"
alias bu="backlight.sh 50"
alias bd="backlight.sh -50"
# wifi, from Ubuntu default
alias wi="nmtui"
