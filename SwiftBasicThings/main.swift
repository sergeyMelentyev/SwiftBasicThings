//
//  main.swift
//  SwiftBasicThings
//
//  Created by Админ on 27.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

                                            /* SWIFT BUILDING BLOCKS */

struct MyStruct {
    /* numbers, bool, text, collections */
    // properties
    // init
    // methods
}
enum MyEnum {
    // properties
    // init
    // methods
}
class MyClass: NSObject {
    // properties
    // init
    // methods
}

                                           /* MAIN COLLECTION TYPES */

var arrayOfInts: Array<Int>
var arrayOfNewInts: [Int]

var dictOfStrings: Dictionary<String, String>
var dictOfNewStrings: [String: String]

var setOfInts: Set<Int>

                                            /* EMPTY INITIALIZERS */

let emptyString = String()
let emptyArrayOfInt = [Int]()
let emptyDictOfStr = [String: String]()
let emptySetOfInts = Set<Int>()

                                        /* IF LOGIC PLUS LOOPS RANGE FOR-IN */

let age = 30;

if case 18...35 = age where age >= 21 {
    print("Print once if statement is true plus where condition")
}

for case let i in 35...35 where age >= 21 {
    print("Print i-times if true with let = \(i) plus where condition");
}

let counterArray: [String] = ["One", "Two", "Three", "Four"]

let range = 0..<counterArray.count
for i in range {
    let string = counterArray[i]
}

for j in counterArray {
    let string = j
}

for (x, string) in counterArray.enumerate() {
    let index = x
    let value = string
}

let counterDictionary: [Int:String] = [1:"One", 2:"Two", 3:"Three", 4:"Four"]
for (x,y) in counterDictionary {
    let key = x
    let value = y
}


                                        /* PATTERN MATCHING WITH TUPLES */

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("");
case (404, _):
    print("");
case (_, 404):
    print("");
default:
    print("");
}

                                                /* STRINGS */

let anyWord = "Hello, Swift!"
let fromStart = anyWord.startIndex
let toPosition = 4
let end = fromStart.advancedBy(toPosition)
let fifthChar = anyWord[end]
print("The fifth char is \(fifthChar)")
let rangeOfChars = fromStart...end
let firstFive = anyWord[rangeOfChars]
print("First five chars are \(firstFive)")

let fourthChar = anyWord[anyWord.startIndex.advancedBy(3)]
let firstFour = anyWord[anyWord.startIndex...anyWord.startIndex.advancedBy(3)]


                                                /* FUNCTIONS */

func devisionDescription(forNumerator num: Double, andDenominator den: Double) {
    // forNumerator, andDenominator are external parameter names
    // num, den are arguments
}
devisionDescription(forNumerator: 2, andDenominator: 4)

// arguments are made avaible as an array
func variadicParameters(names: String...){
    for name in names {
        print("Hello \(name)")
    }
}
variadicParameters("Sergey", "Olga", "Mihail")

// func will take external variable as an argument and will append some info
var error = "The request failed:"
func appendErrorCode(errorCode code: Int, inout toErrorString errorString: String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(errorCode: 400, toErrorString: &error)

// function will return multiple values
func sortEvenOdd(numbers: [Int]) -> (enens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
// assign function type to the variable and pass as an argument to the other functions
let sortEvenOddFunction: ([Int] -> ([Int],[Int])) = sortEvenOdd

// use guard statements for early exit if condition wrong
func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hello there!")
        return
    }
    print("Hello \(middleName)")
}
greetByMiddleName(("Sergey", nil, "Melentyev"))

// function as a return type
func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
        return toLights + lightsToAdd
    }
    return buildRoads
}
var stopLights = 4
let townPlan = makeTownGrand()
stopLights = townPlan(4, stopLights)

// function as an argument to another function
func makeNewTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(lightsToAdd: Int, toLights: Int) -> Int {
            return lightsToAdd + toLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluateBudget(budget: Int) -> Bool {
    return budget > 10000
}
var newStopLights = 10
if let newTownPlan = makeNewTownGrand(15000, condition: evaluateBudget) {
    newStopLights = newTownPlan(4, newStopLights)
}

// functions capture values
func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5422
let growthBy500 = makeGrowthTracker(forGrowth: 500)
currentPopulation += growthBy500()


                                                /* CLOSURE */

var volunteerCounts = [1, 3, 12, 34, 4, 17, 2]
// define a separate closure outside of sort function
func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sort(sortAscending)

// define a new inline closure as a short hand notation
let volunteersNewSorted = volunteerCounts.sort({
    (i: Int, j: Int) -> Bool in
    return i < j
})

// define a new inline closure using type inference
let volunteersAnotheSorted = volunteerCounts.sort({
    i, j in i < j
})

// final short hand notation for a closure
let volunteersShortSorted = volunteerCounts.sort({ $0 < $1 })


                                            /* EMUMERATION TYPE */

// Define a new custom type
enum PieType {
    case Apple
    case Cherry
    case Pecan
}

let favoritePie = PieType.Apple
let name: String

switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Chery"
case .Pecan:
    name = "Pecan"
}

enum TextAlignment {
    case Left
    case Right
    case Center
}

// Create a new instance of your custom type
var alignment: TextAlignment = TextAlignment.Center

// Next time short hand notation can be used
alignment = .Left

// Enum raw value can be Int or String
enum ProgrammingLanguage: String {
    case Swift = "Swift"
    case ObjC = "Objective-C"
    case C = "C"
    case Cpp = "C++"
}
let myLanguage = ProgrammingLanguage.Swift
print(myLanguage.rawValue)

// Enums can have methods
enum Lightbulb {
    case On
    case Off
    func surfaceTemperature(ambient: Double) -> Double {
        switch self {
        case .On:
            return ambient + 150
        case .Off:
            return ambient
        }
    }
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}
var bulb = Lightbulb.On
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(ambientTemperature)

// Associated values
enum ShapeDimensions {
    case Point
    case Square(Double)
    case Rectangle(width: Double, height: Double)
    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w * h
        }
    }
}
var squareShape = ShapeDimensions.Square(10.0)
var rectangleShape = ShapeDimensions.Rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.Point
print("Area of square is \(squareShape.area()), of rect is \(rectangleShape.area())")

// Recursive enumerations
enum FamilyTree {
    case NoKnownParents
    indirect case OneKnownParent(name: String, ancestors: FamilyTree)
    indirect case TwoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}
let sergeyAncestors = FamilyTree.TwoKnownParents(fatherName: "Aleksander", fatherAncestors: .OneKnownParent(name: "Sergey", ancestors: .NoKnownParents), motherName: "Alla", motherAncestors: .TwoKnownParents(fatherName: "Anatoliy", fatherAncestors: .NoKnownParents, motherName: "Marfa", motherAncestors: .NoKnownParents))















