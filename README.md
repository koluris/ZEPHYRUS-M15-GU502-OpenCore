# ZEPHYRUS-M15-GU502-OpenCore
Attempt to Hackintosh a 15" ASUS laptop

### Overall
Stable, robust, but fan noise is audible even on Idle.

### Specifications
* Processor: Core i7-10750H 2.6GHz (Turbo Boost up to 5.0GHz)
* Graphics: RTX 2070 Max-Q 8GB GDDR6 / Intel UHD630 (Up to 2GB of shared mem)
* RAM: 16GB DDR4 2933MHz
* Hard Disk: PCI NVMe 1TB SSD
* Wifi & Bluetooth: Intel Wireless AX201

![About](https://raw.githubusercontent.com/dkoluris/ZEPHYRUS-M15-GU502-OpenCore/master/Screenshots/about.jpg)

### What is near 100% completed
* UHD630 1.5GB / 240hz / Metal / DRM on Chrome
* ALC294 Speaker / Mic / Headphones
* KB Backlit, Brightness & Volume shortcuts
* Trackpad Gestures / Doesn't stall after KB press
* USB Ports USB3/C
* Batt. indicator
* Proper CPU PM (Balanced)
* Sleep

### ROG Backlit & Other KB Shortcuts
* Unzip `macROGAuraCore.zip`
* On terminal run `chmod +x install.sh`, then execute the script
* Move `ROG-HID.app` and `ROGSwitch.app` to `/Applications`
* Enable the extension prompted with `ROG-HID.app`
* Run `ROGSwitch.app`

### Bonus
* Wifi & Bluetooth work, but with experimental driver and HeliPort app (expect some problems)
* ICC Profile that improves the screen's native color
* Use QuickESP to mount EFI partitions with ease (status bar app)

### What doesn't work
* USB-C DP to 4K Monitor/TV
* Apple TV DRM

### Credits
* Major props to <a href="https://github.com/black-dragon74">BlackDragon74</a> for the port of ROG HID driver.
* Big thanks to <a href="https://www.tmstweaks.com">TMSTweaks</a> for the I2C Trackpad solution.
