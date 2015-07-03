using System;
using System.Collections.Generic;
using System.Linq;

class A {
	public class B {
		private List<int> _datas = new List<int>();
		
		public B(List<int> datas) { this._datas = datas; }
		
		public List<int> Filter(Func<int,bool> condition) {
			return _datas.Where(condition).ToList();
		}
	}
}
var b = new A.B(new List<int> { 1, 2, 3, 4});
var rs1 = b.Filter( (x) => x % 2 == 0);
var rs2 = b.Filter( (x) => x % 3 == 0);