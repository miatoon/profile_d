which scrcpy >& /dev/null
if [ $? -eq 0 ]; then
    alias scrcpy='scrcpy -m 1000 --no-audio'
    alias scrcpy_slowdevice='scrcpy -m 1000 --no-audio --display-buffer=1'
    alias scrcpy_sd=scrcpy_slowdevice
    alias scrcpy_nocontrol='scrcpy -m 1000 --no-audio --no-control'
    alias scrcpy_cn=scrcpy_nocontrol
    alias scrcpy_slowdevice_nocontrol='scrcpy -m 1000 --no-audio --no-control --display-buffer=1'
    alias scrcpy_sd_nc=scrcpy_slowdevice_nocontrol
fi