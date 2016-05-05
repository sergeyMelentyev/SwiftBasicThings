//
//  Town.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

struct Town {
    
    // Declare a mutable properties
    var population = 5422
    var numberOfStopLights = 4
    
    // Declare an immutable property
    let region = "South"
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    // Read only computed property with custom getter
    var townSize: Size {
        get {
            switch self.population {
            case 0...10000:
                return Size.Small
            case 10001...1000000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }
    
    // Declare an instance method, it is called on a specific instance of Town
    func printTownDescription() {
        print("Town population \(population) and number of lights \(numberOfStopLights)")
    }
    
    // Declare a mutating method, a function changes structs properties
    mutating func changePopulation(byAmount amount: Int) {
        population += amount
    }
    
    // Declare a type method, a function work with type itself
    // Static func can see only type level properties and another methods
    static func anyGivenName() -> String {
        return "anyReturnInformationHere"
    }

}