import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
	
	let remainingLength = n % s.count
	var letterAsChunk = s.filter {$0 == "a"}
	var numSegments = n / s.count
	var count = letterAsChunk.count * numSegments
	
	var remaining = 0
	for i in 0..<remainingLength {
		if (Array(s)[i] == "a") {remaining += 1}
	}
	return remaining + count
}

print(repeatedString(s: "a", n: 1000000000))
