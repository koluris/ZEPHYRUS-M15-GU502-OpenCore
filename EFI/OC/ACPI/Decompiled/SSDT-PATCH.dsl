DefinitionBlock ("", "SSDT", 2, "GU502L", "_PATCH", 0x00000000)
{
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.XHC.RHUB, DeviceObj)
    External (_SB_.STAS, IntObj)
    
    If (_OSI ("Darwin"))
    {
        Method (PMPM, 4, NotSerialized)
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                    0x03
                })
            }
            
            Return (Package (0x02)
            {
                "plugin-type",
                One
            })
        }
        
        // Scope: \_SB
        
        Scope (_SB)
        {
            // USBX
            
            Device (USBX)
            {
                Name (_ADR, Zero)
                Method (_DSM, 4, NotSerialized)
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03
                        })
                    }
                    
                    Return (Package (0x08)
                    {
                        "kUSBSleepPowerSupply",
                        0x13EC,
                        "kUSBSleepPortCurrentLimit",
                        0x0834,
                        "kUSBWakePowerSupply",
                        0x13EC,
                        "kUSBWakePortCurrentLimit",
                        0x0834
                    })
                }
            }
            
            // AWAK
            
            STAS = One
        }
        
        // Scope: \_SB.PR00
        
        Scope (_SB.PR00)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Return (PMPM (Arg0, Arg1, Arg2, Arg3))
            }
        }
        
        // Scope: \_SB.PCI0.GFX0
        
        Scope (_SB.PCI0.GFX0)
        {
            // PNLF
            
            Device (PNLF)
            {
                Name (_HID, EisaId ("APP0002"))
                Name (_CID, "backlight")
                Name (_UID, 0x13)
                Name (_STA, 0x0B)
            }
        }
        
        // Scope: \_SB.PCI0.LPCB
        
        Scope (_SB.PCI0.LPCB)
        {
            // EC
            
            Device (EC)
            {
                Name (_HID, "EC000000")
                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }
            }
        }
        
        // Scope: \_SB.PCI0.XHC.RHUB
        
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Method (_STA, 0, NotSerialized)
            {
                Return (Zero)
            }
        }
    }
}