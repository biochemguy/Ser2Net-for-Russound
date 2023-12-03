Here is a Home Assistant Addon to connect a Russound CA-66 with Home Assistant. I had a guide for the old Home Assistant without docker (Hassbian) here 41

First off, a (non chinese knock-off) USB to RS-232 prolific or FTDI is needed. I found one on amazon for about 15$

Create a new directory called russound in your local add-on folder: This is where you will store your custom add-on files. You can use the Samba add-on to access the add-on folder from your computer. The path of the add-on folder should be /addons or /usr/share/hassio/addons.
Inside the russound directory, copy the four files from the Ser2Net-for-Russound folder: Dockerfile, config.yaml, run.sh, and ser2net.conf: These are the files that will define your add-on image, configuration, script, and ser2net settings.

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
