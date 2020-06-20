import UIKit

var str = "Hello, playground"
str = "Hello Swift"
let constStr = str

var nextYear: Int = 0
var bodyTemp: Float = 0
var hasPet: Bool = true
var arrayOfInts: Array<Int> = []
var arrayOfStrings: [String] = []
var dictOfCapitalsByCountry: [String:String] = [:]
var winningLotteryNumbers: Set<Int> = []

let number = 42
let fmStation = 91.2

var countingUp = ["one", "two"]
let namedParkingSpace = [13: "Alice", 27: "Bob"]

let secondElement = countingUp[1]

let emptyStr = String()
let emptyArr = [Int]()
let emptySetOfFloats = Set<Float>()

let defaultNumber = Int()
let defaultBoo = Bool()

let meaningOfLife = String(number)
let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14

let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14

countingUp.count
emptyStr.isEmpty
str.count

countingUp.append("5")

var reading1: Float?
var reading2: Float?
var reading3: Float?

if reading1! && reading2! && reading3! {
    
}

reading1 = 9.8
reading2 = 9.2
//reading3 = 9.7
print(str)

//let avgReading = (reading1! + reading2! + reading3!) / 3
let t11 = reading3

if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
        let avgReading = (r1 + r2 + r3) / 3
        print(avgReading)
} else {
    let errorString = "Instrument reported a reading that was nil."
    print(errorString)
}

let space13Assignee: String? = namedParkingSpace[13]
let space42Assignee: String? = namedParkingSpace[42]

if let space13Assignee = namedParkingSpace[13] {
    print(space13Assignee)
}
