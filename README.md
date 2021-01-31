# ZEPHYRUS-M15-GU502-OpenCore
Successful attempt to install macOS on a 15" ASUS Gaming Laptop

### Overall
Stable, robust, but fan noise is audible even on Idle.

### YouTube Showcase
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/wrfeickuYWI/0.jpg)](https://www.youtube.com/watch?v=wrfeickuYWI)

### Specifications
* Processor: Core i7-10750H 2.6GHz (Turbo Boost up to 5.0GHz)
* Graphics: RTX 2070 Max-Q 8GB GDDR6 / Intel UHD630 (Up to 2GB of shared mem)
* RAM: 16GB DDR4 2933MHz
* Hard Disk: PCI NVMe 1TB SSD
* Wifi & Bluetooth: Intel Wireless AX201

![About](https://raw.githubusercontent.com/dkoluris/ZEPHYRUS-M15-GU502-OpenCore/master/Screenshots/about.jpg)

### What is near 100% completed
* UHD630 1.5GB / Metal / 240Hz
* ALC294 Speakers / Headphones / Mic
* AX201 Wifi (limited bandwidth for now) / Bluetooth / AirDrop / Location Services
* RGB LED Backlight / Screen & Volume shortcuts
* Trackpad with Gestures support
* Proper mapping of available USB 3.0/3.1/C ports
* Batt. indicator
* Balanced CPU PM Profile
* Sleep

### ROG Backlit & Other KB Shortcuts
* Unzip `macROGAuraCore.zip`
* On terminal run `chmod +x install.sh`, then execute the actual script
* Move `ROG-HID.app` and `ROGSwitch.app` to `/Applications`
* Enable the extension prompted with `ROG-HID.app`
* Run `ROGSwitch.app`

### Bonus
* DRM content like Netflix, please use Chrome
* Use QuickESP to mount EFI partitions with ease, support me :)
* ICC Profile that improves the screen's native colors

### What doesn't work
* USB-C DP output to Monitor/TV
* Apple TV DRM (Known issue for all iGPU Hackintosh)

### Credits
* Props to <a href="https://github.com/black-dragon74">BlackDragon74</a> for the port of ROG HID driver.
* Big thanks to <a href="https://www.tmstweaks.com">TMSTweaks</a> for the I2C Trackpad solution.
* Much appreciated <a href="https://github.com/Alex-V2000">Alex-V2000</a> for the dGPU wake solution.
