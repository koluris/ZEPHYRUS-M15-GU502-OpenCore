# ZEPHYRUS-M15-GU502-OpenCore
Attempt to Hackintosh a 15" ASUS laptop

### Overall
Stable, robust, but excessive noise fan even on Idle.

### Specifications
* Processor: Core i7-10750H 2.6GHz (Turbo Boost up to 5.0GHz)
* Graphics: RTX 2070 Max-Q 8GB GDDR6 / Intel UHD630 (Up to 2GB of shared mem)
* RAM: 16GB DDR4 2933MHz
* Hard Disk: PCI NVMe 1TB SSD
* Wifi & Bluetooth: Intel Wireless AX201

### What is near 100% completed
* UHD630 2GB / Metal / DRM works on Chrome
* ALC294 Speaker / Mic / Headphones
* Volume shortcuts
* Trackpad Gestures / Doesn't stall after KB press
* USB Ports USB3/C
* Batt. indicator
* Proper CPU PM (Balanced)
* Sleep

### Bonus
* Wifi & Bluetooth work, but with experimental driver and HeliPort app (expect some problems)
* ICC Profile that improves the screen's native color

### What doesn't work
* Brightness, KB Backlit
* USB-C DP to 4K Monitor/TV
* Apple TV DRM

### Notes
* Use HeliPort to facilitate Intel Wifi usage
* Use QuickESP to mount EFI partitions with ease (status bar app)
