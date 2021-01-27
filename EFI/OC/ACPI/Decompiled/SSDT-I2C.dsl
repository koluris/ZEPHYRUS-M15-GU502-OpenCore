DefinitionBlock ("", "SSDT", 2, "GU502L", "_I2C", 0x00000000)
{
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (SSH1, IntObj)
    External (SSL1, IntObj)
    External (SSD1, IntObj)
    
    Scope (_SB.PCI0.I2C1)
    {
        Method (PKG3, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero,
                Zero,
                Zero
            })
            
            PKG [0x00] = Arg0
            PKG [0x01] = Arg1
            PKG [0x02] = Arg2
            
            Return (PKG)
        }
        
        Method (SSCN, 0, NotSerialized)
        {
            Return (PKG3 (SSH1, SSL1, SSD1))
        }
    }
}