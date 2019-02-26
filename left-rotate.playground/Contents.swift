import Foundation


// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
	if (a.count == 1) {return a}
	let numRots = (d % a.count)
	return Array(a[numRots...] + a[..<numRots])
}

print(rotLeft(a: [1, 2, 3, 4, 5], d: 1))
