setxkbmap -option grp:rctrl_rshift_toggle us,de
setxkbmap -option caps:escape

# put Node in PATH
if [ -d "/data/opt/node/bin" ] ; then
    export PATH="$PATH:/data/opt/node/bin" 
fi
