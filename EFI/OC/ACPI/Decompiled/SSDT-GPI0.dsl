DefinitionBlock ("", "SSDT", 2, "GU502L", "_GPI0", 0x00000000)
{
    External (GPHD, FieldUnitObj)
    
    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPHD = Zero
        }
        Else
        {
        }
    }
}