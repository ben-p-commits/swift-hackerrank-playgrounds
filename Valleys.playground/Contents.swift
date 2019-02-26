import Foundation



// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
	var trek = [String]()
	for char in s {trek.append(String(char))}
	
	var valleys = 0
	var depth = 0
	var inValley = false
	
	for move in trek {
		if (move == "U") {
			depth += 1
		} else if (move == "D") {
			depth -= 1
		}
	
		if (!inValley && depth < 0) { valleys += 1 }
		inValley = (depth < 0)
	}
	return valleys
}


print(countingValleys(n: 8, s: "UDDDUDUU"))
