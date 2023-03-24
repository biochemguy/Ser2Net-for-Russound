Here is a Home Assistant Addon to connect a Russound CA-66 with Home Assistant. I had a guide for the old Home Assistant without docker (Hassbian) here 41

First off, a (non chinese knock-off) USB to RS-232 prolific or FTDI is needed. I found one on amazon for about 15$

In the Home Assistant Config folder, create a new folder called ser2net and create a new file called ser2net.conf. it should look like this : /config/ser2net/ser2net.conf

Edit and save this file with this content:

```BANNER:banner:\r\nser2net port \p device \d [\s] (Debian GNU/Linux)\r\n\r\n
3333:telnet:0:/dev/ttyUSB0:19200 8DATABITS NONE 1STOPBIT banner
```
In Portainer, create a new container with the image : jsurf/rpi-ser2net:latest 34

Configure the container with the following:

Publish all exposed network ports to random host ports (Or else, if you want to specify it, the image uses port 3333)
Command: '/bin/sh' '-c' '/usr/sbin/ser2net -d -u'
Entrypoint: /usr/bin/entry.sh
Bind Volumes: /etc/ser2net.conf with host: /mnt/data/supervisor/homeassistant/ser2net/ser2net.conf
Add device for host and container: /dev/ttyUSB0 (Or whatever maps to that usb-to-serial device)
Deploy and start the container (I have it set to automatic start on reboot)
Edit the config file for Home Assistant to add the Russound RNET controller (Edit the sources as needed):
```media_player:
  - platform: russound_rnet
    host: 127.0.0.1
    port: 3333 
    name: Russound
    zones:
      1:
        name: Bathroom
      2:
        name: Living Room
      3:
        name: Kitchen
      4:
        name: Outdoor
    sources:
      - name: Cable
      - name: TV
      - name: Android
      - name: Bluetooth
      ```
