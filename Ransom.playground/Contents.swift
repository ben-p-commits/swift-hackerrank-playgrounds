import Foundation

func checkMagazine(magazine: [String], note: [String]) -> Void {
	
	var mDict = [String: Int]()
	
	for word in magazine {
		mDict[word] = (mDict[word] ?? 0) + 1
	}
	
	for word in note {
		if ((mDict[word] ?? 0) > 0) {
			mDict[word] = (mDict[word] ?? 0) - 1
		} else {
			print("No")
			return
		}
	}
	print("Yes")
	
}


checkMagazine(magazine: ["give", "me", "one", "grand", "today", "night", "me"],
			  note: ["give", "one", "grand", "today"])
