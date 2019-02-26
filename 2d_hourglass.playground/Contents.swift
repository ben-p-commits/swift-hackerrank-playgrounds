import UIKit

func hourglassSum(arr: [[Int]]) -> Int {
	var counter = 0
	var sums = [Int]()
	
	for (y, row) in arr.enumerated() {
		
		if (y > arr.count - 3) { break }

		for (x, value) in row.enumerated() {
			
			if (x > row.count - 3) { break }
			counter += 1

			sums.append(
				arr[y][x] + arr[y][x+1] + arr[y][x+2]
						+ arr[y+1][x+1] +
				arr[y+2][x] + arr[y+2][x+1] + arr[y+2][x+2]
			)
		}
	}
	
	return sums.reduce(Int.min, {x, y in
		if (y > x) { return y }
		else { return x }
	});
}


let sample = [
	[-1, -1,  0, -9, -2, -2],
	[-2, -1, -6, -8, -2, -5],
	[-1, -1, -1, -2, -3, -4],
	[-1, -9, -2, -4, -4, -5],
	[-7, -3, -3, -2, -9, -9],
	[-1, -3, -1, -2, -4, -5]
]

print("largest HG sum: \(hourglassSum(arr: sample))")
