//
//  Town.swift
//  SwiftBasicThings
//
//  Created by Админ on 04/05/16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

import Foundation

struct Town {
    
    // Static type property will be inherited but cannot be overridden by a subclass
    static let regionOld = "South"
    
    // Static type method, can see only type level properties and methods
    static func anyGivenName() -> String {
        return "anyReturnInformationHere"
    }
    
    // Computed instance property with observer
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed from \(oldPopulation) to \(population)")
        }
    }
    var numberOfStopLights: Int
    let region: String
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    // Computed instance property with custom getter
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
    
    // Instance method, it is called on a specific instance of Town
    func printTownDescription() {
        print("Town population \(population) and number of lights \(numberOfStopLights)")
    }
    
    // Declare a mutating method, a function changes struct property
    mutating func changePopulation(byAmount amount: Int) {
        population += amount
    }

    // Custom failabe initializer
    init?(region: String, population: Int, stopLights: Int) {
        if population <= 0 {
            return nil
        }
        // Use self key word if an instance property name is the same as init argument name
        self.region = region
        self.population = population
        numberOfStopLights = stopLights
    }
    
    // Custom failabe initializer delegation
    init?(population: Int, stopLights: Int) {
        self.init(region: "N/A", population: population, stopLights: stopLights)
    }
    
}









