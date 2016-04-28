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

                                                /* LOOPS RANGE FOR-IN */

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

