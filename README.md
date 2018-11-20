# piosk




## 1. download raspbian lite
https://www.raspberrypi.org/downloads/raspbian/




```
sudo apt-get --no-install-recommends install xserver-xorg xserver-xorg-video-fbdev xinit pciutils xinput xfonts-100dpi xfonts-75dpi xfonts-scalable chromium-browser

```




Assuming your monitor is smaller then 7000px

chromium-browser --window-size=7000,7000 --start-fullscreen
This command will detect your screen height / width

Now you also can use it in a bash script:



/home/pi/full.sh

```
#!/bin/bash/ 
chromium-browser --window-size=7000,7000 --start-fullscreen
```

and then run

```
startx /home/pi/full.sh
```

It will launch a fullscreen browser, from a non-gui terminal :D.

NOT NEEDED,

but for fun I tested a bash code to get the screen resolution, but you don't need it..

#!/bin/bash
CMD="$(fbset -s | awk '$1 == "geometry" { print $2" "$3 }')"
echo "$CMD"
Hope it will help.
