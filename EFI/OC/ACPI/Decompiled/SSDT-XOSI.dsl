DefinitionBlock ("", "SSDT", 2, "GU502L", "_XOSI", 0x00000000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x11)
        {
            "Windows 2001",
            "Windows 2001.1",
            "Windows 2001 SP1",
            "Windows 2001 SP2",
            "Windows 2001 SP3",
            "Windows 2006",
            "Windows 2006 SP1",
            "Windows 2009",
            "Windows 2012",
            "Windows 2013",
            "Microsoft Windows NT",
            "Microsoft Windows",
            "Microsoft WindowsME: Millennium Edition"
        }
        
        If (_OSI ("Darwin"))
        {
            Return ((Zero != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}