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
* Brightness & Volume shortcuts
* Trackpad Gestures / Doesn't stall after KB press
* USB Ports USB3/C
* Batt. indicator
* Proper CPU PM (Balanced)
* Sleep

### Bonus
* Wifi & Bluetooth work, but with experimental driver and HeliPort app (expect some problems)
* Set F7 & F8 as brightness shortcuts (see screenshot below)
* ICC Profile that improves the screen's native color

![Brightness](https://raw.githubusercontent.com/dkoluris/ZEPHYRUS-M15-GU502-OpenCore/master/Screenshots/kb.jpg)

### What doesn't work
* KB Backlit
* USB-C DP to 4K Monitor/TV
* Apple TV DRM

### Notes
* Use HeliPort to facilitate Intel Wifi usage
* Use QuickESP to mount EFI partitions with ease (status bar app)

### Credits
* Big thanks to <a href="https://www.tmstweaks.com">TMSTweaks</a> for the I2C Trackpad solution!
