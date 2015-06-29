<Query Kind="Program" />

class Test {
	private String _name = "Test";
	public String GetName() { return _name + "N"; }
	public String GetEmpty() { return ""; }
	public static int GetZero() { return 0; }
}
void Main() {
	var test = new Test();
	var name = test.GetName();
	var empty = test.GetEmpty();
	var zero = Test.GetZero();
}