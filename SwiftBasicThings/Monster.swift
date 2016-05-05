//
//  Monster.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

class Monster {
    
    // Declare a mutable properties
    var town: Town?
    var name = "Monster"
    
    // Declare computed property with custom setter and getter
    var victimPool: Int {
        get {
            // use nil coalescing operator to check if the town is init or set zero
            return town?.population ?? 0
        }
        set(newVictimPool) {
            // use optional chaining to ensure that town is init
            town?.population = newVictimPool
        }
    }
    
    // Declare an instance method, it is called on a specific instance of Monster
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) has not found a town to terrorize yet...")
        }
    }
    
    // Declare a type method, a function work with type itself
    // Class func can see only type level properties and another methods
    class func anyTypeMethodName() -> String {
        return "anyReturnInformationHere"
    }
    
}