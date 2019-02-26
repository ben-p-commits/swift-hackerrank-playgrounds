import Foundation


func twoStrings(s1: String, s2: String) -> String {
	
	var s1_dict = [Character : Int]()
	var s2_dict = [Character : Int]()
	
	for char in s1 {
		s1_dict[char] = 1
	}
	
	for char in s2 {
		s2_dict[char] = 1
	}
	
	for item in s1_dict {
		if (s2_dict[item.key] != nil) { return "YES"}
	}
	return "NO"
	
}


print(twoStrings(s1: "hello", s2: "boar"))
