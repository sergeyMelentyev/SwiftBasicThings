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