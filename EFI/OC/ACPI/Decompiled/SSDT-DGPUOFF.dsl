DefinitionBlock("", "SSDT", 2, "GU502L", "_DGPUOFF", 0x00000000)
{
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
    
    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
        
        Method(_INI)
        {
            If (_OSI ("Darwin"))
            {
               If (CondRefOf(\_SB.PCI0.PEG0.PEGP._OFF)) { \_SB.PCI0.PEG0.PEGP._OFF() }
            }
            Else
            {
            }
        }
    }
}