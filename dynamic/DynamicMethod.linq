<Query Kind="Program">
  <Namespace>System.Reflection.Emit</Namespace>
</Query>


class P {
	static double Divider(int a, int b) {
		return a / b;
	}
}

class Program {
	delegate double DivideDelegate(int a, int b);
	
	static void Main()
	{
		//var result = Divider(10, 2);
		var myMethod = new DynamicMethod("DivideMethod", 
			typeof(double), 
			new [] { typeof(int), typeof(int) },
			typeof(P).Module
		);
		
		var il = myMethod.GetILGenerator();
		il.Emit(OpCodes.Ldarg_0);
		il.Emit(OpCodes.Ldarg_1);
		il.Emit(OpCodes.Div);
		il.Emit(OpCodes.Ret);
		
		var result = myMethod.Invoke(null, new object[] { 10, 2});
		Console.WriteLine(result); // 5
		
		var method = (DivideDelegate) myMethod.CreateDelegate(
			typeof(DivideDelegate)
		);
		
		var result2 = method(6,2);
		Console.WriteLine(result2);
	}
}
