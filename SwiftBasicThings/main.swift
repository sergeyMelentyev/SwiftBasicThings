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
    /* Numbers, Bool, Text, Cellections */
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

                                            /* EMUMERATION TYPE */

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








