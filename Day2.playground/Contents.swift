import Cocoa

let fileURL = Bundle.main.url(forResource: "puzzle2", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: .utf8)

let rounds = content.split(separator: "\n")

var totalScore = 0

//rounds.forEach { r in
//    let op = r.prefix(1)
//    let me = r.dropFirst(2)
//    switch (op, me) {
//    case ("A", "X"):
//        // its a tie, 3 points
//        // rock is worth 1 point
//        totalScore += 4
//    case ("B", "Y"):
//        // its a tie, 3 points
//        // paper is worth 2 points
//        totalScore += 5
//    case ("C", "Z"):
//        // its a tie, 3 points
//        // scissors is worth 3 points
//        totalScore += 6
//    case ("B", "X"):
//        // loss 0
//        // rock is worth 1 point
//        totalScore += 1
//    case ("C", "X"):
//        // win 6
//        // rock is worth 1 point
//        totalScore += 7
//    case ("A", "Y"):
//        // win 6
//        //paper is worth 2 points
//        totalScore += 8
//    case ("C", "Y"):
//        //loss 0
//        //paper is worth 2 points
//        totalScore += 2
//    case ("A", "Z"):
//        //loss 0
//        // scissors is worth 3 points
//        totalScore += 3
//    case ("B", "Z"):
//        // win 6
//        // scissors is worth 3 points
//        totalScore += 9
//    default:
//        return
//    }
//}

rounds.forEach { r in
    let op = r.prefix(1)
    let me = r.dropFirst(2)
    switch (op, me) {
    case ("A", "X"):
        // loss 0
        // scissors is worth 3 points
        totalScore += 3
    case ("B", "Y"):
        // its a tie, 3 points
        // paper is worth 2 points
        totalScore += 5
    case ("C", "Z"):
        // win 6 points
        // rock is worth 1 point
        totalScore += 7
    case ("B", "X"):
        // loss 0
        // rock is worth 1 point
        totalScore += 1
    case ("C", "X"):
        // loss 0
        // paper is worth 2 points
        totalScore += 2
    case ("A", "Y"):
        // its a tie, 3 points
        // rock is worth 1 point
        totalScore += 4
    case ("C", "Y"):
        // its a tie, 3 points
        // scissors is worth 3 points
        totalScore += 6
    case ("A", "Z"):
        // win 6 points
        // paper is worth 2 points
        totalScore += 8
    case ("B", "Z"):
        // win 6 points
        // scissors is worth 3 points
        totalScore += 9
    default:
        return
    }
}

totalScore
