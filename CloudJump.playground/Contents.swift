import UIKit

func jumpingOnClouds(c: [Int]) -> Int {
	var jumps = 0
	var pos = 0;
	
	while pos < c.count {		
		if (pos == c.count-1) { return jumps }
		if (pos == c.count-2) { return jumps + 1}
		
		if (c[pos+1] == 0) {
			
			if (c[pos+2] == 1) {
				pos += 1
			} else {
				pos += 2
			}
		} else {
			if (pos + 2 > c.count-1) {
				pos += 1
			} else {
				pos += 2
			}
		}
		jumps = jumps + 1
	}
	return jumps
}


print(jumpingOnClouds(c: [0, 0, 0, 1, 0, 0]))
