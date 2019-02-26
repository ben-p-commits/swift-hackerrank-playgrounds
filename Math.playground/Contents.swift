extension Int {
	func isPrime() -> Bool {
		if (self == 0 || self == 1) {
			return false
		}
		for i:Int in 2..<self {
			if (self % i == 0) {
				return false
			}
		}
		return true
	}
	
	static func gcd(_ a: Int, _ b: Int) -> Int? {
		// to determine the greatest common divisor, we need to get largest divisors of each value
		var a_divisors = [Int]()
		var b_divisors = [Int]()
		var common_divisors = [Int]()
		
		for i in 1..<a {
			if (a % i == 0) { a_divisors.append(i) }
		}
		
		for i in 1..<b {
			if (b % i == 0) { b_divisors.append(i) }
		}
		
		print("a: \(a_divisors), b: \(b_divisors)")
		
		for a_div in a_divisors {
			for b_div in b_divisors {
				if (a_div == b_div) { common_divisors.append(a_div)}
			}
		}
		
		common_divisors.sort { $0 < $1 }
		return common_divisors.last
	}
}

Int.gcd(63, 99)

// unit test
let testArray = [2, 3, 42];
var results = testArray.map { (Int) -> (value: Int, isPrime: Bool) in
	return (Int, Int.isPrime())
}
