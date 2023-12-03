# Russound

An add-on to integrate russound caa-66 into home assistant.

## About

This add-on allows you to control your russound caa-66 device with home assistant using the RNET protocol. It uses the ser2net program to create a TCP-Serial bridge between your add-on and your device. It also uses the russound_rnet media player component in home assistant to control the device.

## Installation

To install this add-on, you need to do the following steps:

- Go to **Settings > Add-ons** in your Home Assistant UI.
- In the bottom right, select **Add-on store**.
- Top right, select the **three dots** and select **Repositories**.
- In the add field, enter the URL of this GitHub repository, and select **Add**.
- Check for updates.
- In the **Add-on store**, you should now see this add-on.
- Install and start
- 
## Configuration

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


