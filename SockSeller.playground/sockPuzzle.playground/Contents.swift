func sockMerchant(n: Int, ar: [Int]) -> Int {
	var sockMap = [Int:Int]()
	for color in ar {
		if let sock = sockMap[color] {
			sockMap[color] = sock + 1
		} else {
			sockMap[color] = 1
		}
	}
	
	let pairs = sockMap.values.reduce(0) { (x, y) -> Int in
		return x + (y/2)
	}
	return pairs
}

sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])

