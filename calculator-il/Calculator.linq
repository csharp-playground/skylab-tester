<Query Kind="Program">
  <Namespace>System.Reflection.Emit</Namespace>
</Query>

	class Program 
	{
		static int Calculate(int first, int second, int third) 
		{
			var  result = first * second;
			return result - third;
		}
	
		public static void Main() 
		{
			var calcMethod = new DynamicMethod("CalcMethod",
				typeof(int), 
				new [] { typeof(int), typeof(int), typeof(int) },
				typeof(Program).Module);
				
				
			var il = calcMethod.GetILGenerator();
			il.DeclareLocal(typeof(int));
			il.Emit(OpCodes.Ldarg_0);
			il.Emit(OpCodes.Ldarg_1);
			il.Emit(OpCodes.Mul);
			il.Emit(OpCodes.Stloc_0);
			il.Emit(OpCodes.Ldloc_0);
			il.Emit(OpCodes.Ldarg_2);
			il.Emit(OpCodes.Sub);
			il.Emit(OpCodes.Ret);
			
			var method = (Func<int,int,int,int>)calcMethod.CreateDelegate(
					typeof(Func<int,int,int,int>)
				);
				
			var result = method(10,10,5);
			Console.WriteLine(result);
		}
	}