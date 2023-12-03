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

To configure this add-on, you need to do the following steps:

- Connect your russound caa-66 device to your home assistant system using a USB to RS-232 cable.
- In the add-on configuration panel, set the device path to `/dev/ttyUSB0` or the appropriate path for your system.
- In the add-on configuration panel, set the port number to `3333` or the appropriate port for your system.
- In the add-on configuration panel, set the baud rate to `19200` or the appropriate rate for your device.
- In the add-on configuration panel, set the data bits to `8`, the parity to `NONE`, and the stop bits to `1`.
- Start the add-on and check the logs for any errors or warnings.
- In your Home Assistant Config folder, open the configuration.yaml file and add the following lines:

