//
//  Monster.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

class Monster {
    
    // Static type property will be inherited but cannot be overridden by a subclass
    static var isTerrifying = true
    
    // Computed type property will be inherited but can be overridden by a subclass
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    // Stored instance property
    var town: Town?
    var name = "Monster"
    
    // Computed instance property with custom setter and getter
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
    
    // Instance method called on a specific instance of Monster
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) has not found a town to terrorize yet...")
        }
    }
    
}