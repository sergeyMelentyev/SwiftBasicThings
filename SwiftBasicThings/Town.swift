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