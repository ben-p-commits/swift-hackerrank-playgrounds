import Foundation


// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Void {

	var numBribes = 0;
	var arr = q
	
	var bribes = arr.reduce([Int: Int]()) { (dict, value) -> [Int: Int] in
		var dict = dict
		dict[value] = 0
		return dict
	}

	
	// check each value and see how many moves to get it home
	
	for (i, number) in arr.enumerated() {
	
		// if they are in the correct spot, move on
		if (number == i+1) { continue }
		
		// this bad boy will need to swap forwards
		if (number > i+1) {
			guard var stop = arr.firstIndex(of: number) else { continue }
			stop += 1
			
			print("i: \(i), stop: \(stop)")
			
			for j in i..<stop {
				arr.swapAt(i, i+1)
				print("swap \(j): \(arr)")
				bribes[number] = (bribes[number] ?? 0) + 1
				numBribes += 1
			}
		}
	}
	print(arr)
	print(numBribes)
	for bribeCount in bribes.values {
		if (bribeCount > 1) {
			print("Too chaotic."); break
		}
	}

}

minimumBribes(q: [2, 1, 5, 3, 4])
