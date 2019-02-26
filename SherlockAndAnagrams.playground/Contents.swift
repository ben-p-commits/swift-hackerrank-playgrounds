import Foundation

func sherlockAndAnagrams(s: String) -> Int {
	// collect all substrings in a hashma
	let arr = s.map { String($0) }
	
	for x in arr.enumerated() {
		for i in 1...arr.count - x.offset {
			
		}
	}
	
	return 0
}

print("number of anagrams: \(sherlockAndAnagrams(s: "abba"))") // expect 4
