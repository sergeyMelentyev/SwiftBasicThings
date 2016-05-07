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
    private(set) var isFallingApart: Bool
    
    // Stored instance property
    var walksWithLimp: Bool
    
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

    // Required designated initializer
    required init(town: Town?, monsterName: String){
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    // Designated initializer
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String){
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    // Convenience initializer
    convenience init(limp: Bool, fallingApart: Bool){
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zimbie has a bad knee.")
        }
    }
    
}







