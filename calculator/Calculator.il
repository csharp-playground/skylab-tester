.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit Employee
    extends [mscorlib]System.Object
{
    // Methods
    .method private hidebysig static 
        void Main (
            string[] args
        ) cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 14 (0xe)
        .maxstack 8

        IL_0000: nop
        IL_0001: ldc.i4.5
        IL_0002: call int32 Employee::Calculate1(int32)
        IL_0007: call void [mscorlib]System.Console::WriteLine(int32)
        IL_000c: nop
        IL_000d: ret
    } // end of method Employee::Main

    .method private hidebysig static 
        int32 Calculate1 (
            int32 x
        ) cil managed 
    {
        // Method begins at RVA 0x2060
        // Code size 24 (0x18)
        .maxstack 2
        .locals init (
            [0] int32,
            [1] bool,
            [2] int32
        )

        IL_0000: nop
        IL_0001: ldarg.0
        IL_0002: stloc.0
        IL_0003: nop
        IL_0004: ldloc.0
        IL_0005: ldc.i4.5
        IL_0006: add
        IL_0007: stloc.0
        IL_0008: nop
        IL_0009: ldloc.0
        IL_000a: ldc.i4.s 15
        IL_000c: clt
        IL_000e: stloc.1
        IL_000f: ldloc.1
        IL_0010: brtrue.s IL_0003
        IL_0012: ldloc.0
        IL_0013: stloc.2
        IL_0014: br.s IL_0016
        IL_0016: ldloc.2
        IL_0017: ret
    } // end of method Employee::Calculate1

    .method private hidebysig static 
        int32 Calculate2 (
            int32 n
        ) cil managed 
    {
        // Method begins at RVA 0x2084
        // Code size 31 (0x1f)
        .maxstack 3
        .locals init (
            [0] bool,
            [1] int32
        )

        IL_0000: nop
        IL_0001: ldarg.0
        IL_0002: ldc.i4.1
        IL_0003: cgt
        IL_0005: ldc.i4.0
        IL_0006: ceq
        IL_0008: stloc.0
        IL_0009: ldloc.0
        IL_000a: brfalse.s IL_0010
        IL_000c: ldarg.0
        IL_000d: stloc.1
        IL_000e: br.s IL_001d
        IL_0010: ldarg.0
        IL_0011: ldarg.0
        IL_0012: ldc.i4.1
        IL_0013: sub
        IL_0014: call int32 Employee::Calculate2(int32)
        IL_0019: mul
        IL_001a: stloc.1
        IL_001b: br.s IL_001d
        IL_001d: ldloc.1
        IL_001e: ret
    } // end of method Employee::Calculate2

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x20af
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0
        IL_0001: call instance void [mscorlib]System.Object::.ctor()
        IL_0006: nop
        IL_0007: ret
    } // end of method Employee::.ctor

} // end of class Employee

