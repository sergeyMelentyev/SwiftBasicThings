//
//  Zombie.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

class Zombie: Monster {
    
    // Computed type property
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    // Default visibility (internal) for the getter and private for the setter
    private(set) var isFallingApart = false
    
    // Stored instance property
    var walksWithLimp = true
    
    // reDeclare an instance method, inherited from super class
    override func terrorizeTown() {
        // use optional chaining to ensure that town is init
        town?.changePopulation(byAmount: -300)
        // Call method from super class
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }

}