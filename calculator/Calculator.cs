using System;

class Employee
{   
    static void Main(String[] args) {
    	Console.WriteLine(Calculate1(5));
    }
    
    static int Calculate1(int x) {
    	var result = x;
        do {
        	result += 5;
        } while(result < 15);
        
        return result;
    }
    
    static int Calculate2(int n) {
    	if ( n <= 1) return n;
        return n * Calculate2(n -1 );
    }
}
