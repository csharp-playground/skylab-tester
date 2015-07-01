<Query Kind="Program" />

class Test {
	private String _name = "John";
	public String GetName(String prefix) { return prefix + _name; }
	public String GetEmpty() { return ""; }
	public static int GetZero() { return 0; }
}
void Main() {
	var test = new Test();
	var name = test.GetName("Mr.");
	var empty = test.GetEmpty();
	var zero = Test.GetZero();
}