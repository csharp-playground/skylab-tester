<Query Kind="Program">
  <Namespace>System</Namespace>
  <Namespace>System.Linq</Namespace>
</Query>



class Person {
    public String Name {set;get;}
    
    public String Speak() {
        return String.Format("Hello there, my name is {0}", Name);   
    }
}

void Main() {
        
        var filip = new Person { Name =  "Pilip Ekberg" };
        var type = filip.GetType();
        var methods = type.GetMethods();
        var rs = type.GetMethod("Speak").Invoke(filip, null);
		Console.WriteLine(rs);
        type.GetMethod("set_Name").Invoke(filip, new [] { "John" });    
		
		var rs2 = type.GetMethod("Speak").Invoke(filip, null);
		Console.WriteLine(rs2);
}