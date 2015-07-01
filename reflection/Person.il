IL_0000:  nop         
IL_0001:  newobj      UserQuery+Person..ctor
IL_0006:  stloc.s     05 // <>g__initLocal0
IL_0008:  ldloc.s     05 // <>g__initLocal0
IL_000A:  ldstr       "Pilip Ekberg"
IL_000F:  callvirt    UserQuery+Person.set_Name
IL_0014:  nop         
IL_0015:  ldloc.s     05 // <>g__initLocal0
IL_0017:  stloc.0     // filip
IL_0018:  ldloc.0     // filip
IL_0019:  callvirt    System.Object.GetType
IL_001E:  stloc.1     // type
IL_001F:  ldloc.1     // type
IL_0020:  callvirt    System.Type.GetMethods
IL_0025:  stloc.2     // methods
IL_0026:  ldloc.1     // type
IL_0027:  ldstr       "Speak"
IL_002C:  callvirt    System.Type.GetMethod
IL_0031:  ldloc.0     // filip
IL_0032:  ldnull      
IL_0033:  callvirt    System.Reflection.MethodBase.Invoke
IL_0038:  stloc.3     // rs
IL_0039:  ldloc.3     // rs
IL_003A:  call        System.Console.WriteLine
IL_003F:  nop         
IL_0040:  ldloc.1     // type
IL_0041:  ldstr       "set_Name"
IL_0046:  callvirt    System.Type.GetMethod
IL_004B:  ldloc.0     // filip
IL_004C:  ldc.i4.1    
IL_004D:  newarr      System.String
IL_0052:  stloc.s     06 // CS$0$0000
IL_0054:  ldloc.s     06 // CS$0$0000
IL_0056:  ldc.i4.0    
IL_0057:  ldstr       "John"
IL_005C:  stelem.ref  
IL_005D:  ldloc.s     06 // CS$0$0000
IL_005F:  callvirt    System.Reflection.MethodBase.Invoke
IL_0064:  pop         
IL_0065:  ldloc.1     // type
IL_0066:  ldstr       "Speak"
IL_006B:  callvirt    System.Type.GetMethod
IL_0070:  ldloc.0     // filip
IL_0071:  ldnull      
IL_0072:  callvirt    System.Reflection.MethodBase.Invoke
IL_0077:  stloc.s     04 // rs2
IL_0079:  ldloc.s     04 // rs2
IL_007B:  call        System.Console.WriteLine
IL_0080:  nop         
IL_0081:  ret         

Person.set_Name:
IL_0000:  ldarg.0     
IL_0001:  ldarg.1     
IL_0002:  stfld       UserQuery+Person.<Name>k__BackingField
IL_0007:  ret         

Person.get_Name:
IL_0000:  ldarg.0     
IL_0001:  ldfld       UserQuery+Person.<Name>k__BackingField
IL_0006:  stloc.0     
IL_0007:  br.s        IL_0009
IL_0009:  ldloc.0     
IL_000A:  ret         

Person.Speak:
IL_0000:  nop         
IL_0001:  ldstr       "Hello there, my name is {0}"
IL_0006:  ldarg.0     
IL_0007:  call        UserQuery+Person.get_Name
IL_000C:  call        System.String.Format
IL_0011:  stloc.0     // CS$1$0000
IL_0012:  br.s        IL_0014
IL_0014:  ldloc.0     // CS$1$0000
IL_0015:  ret         

Person..ctor:
IL_0000:  ldarg.0     
IL_0001:  call        System.Object..ctor
IL_0006:  ret         
