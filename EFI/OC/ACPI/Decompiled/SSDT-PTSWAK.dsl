DefinitionBlock ("", "SSDT", 2, "GU502L", "_PTSWAK", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)
    External (_SB_.PCI0.PEG0.PEGP._ON, MethodObj)
    External (ZPTS, MethodObj)
    External (ZWAK, MethodObj)
    
    Method (_PTS, 1, NotSerialized)
    {
        If (CondRefOf (\_SB.PCI0.PEG0.PEGP._ON))
        {
            \_SB.PCI0.PEG0.PEGP._ON()
        }

        ZPTS (Arg0)
    }
    
    Method (_WAK, 1, NotSerialized)
    {
        If (((Arg0 < One) || (Arg0 > 0x05)))
        {
            Arg0 = 0x03
        }
        
        Local0 = ZWAK (Arg0)
        
        If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF))
        {
            \_SB.PCI0.PEG0.PEGP._OFF()
        }
        
        Return (Local0)
    }
}