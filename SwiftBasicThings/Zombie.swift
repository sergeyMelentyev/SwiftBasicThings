//
//  Zombie.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

class Zombie: Monster {
    
    // Declare a mutable properties
    var walksWithLimp = true
    
    // reDeclare an instance method, inherited from super class
    override func terrorizeTown() {
        town?.changePopulation(byAmount: -300)
        // Call method from super class
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
    
    // Declare a type method, a function work with type itself
    // Class func can see only type level properties and another methods
    class func anyNewTypeMethodName() -> String {
        return "anyReturnInformationHere"
    }

}