var adder = new Func<Func<int,int>>(() => {
	var t = 0;
	var temp = new Func<int,int> ((x) => {
		t += x;
		return t;
	});
	return temp;
});