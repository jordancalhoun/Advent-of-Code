import Cocoa

let fileURL = Bundle.main.url(forResource: "puzzle1", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: .utf8)

let elfStrings = content.components(separatedBy:"\n\n")
var calorieArray = [Int]()
elfStrings.forEach { elf in
    let cals = elf.components(separatedBy:"\n")

    var total = 0
    cals.forEach { cal in
        guard let calorie = Int(cal) else {
            return
        }
        total += calorie
    }
    
    calorieArray.append(total)
}

calorieArray.sort { $0 > $1 }
calorieArray[0] + calorieArray[1] + calorieArray[2]
