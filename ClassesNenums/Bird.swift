//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow
    case medium
    case fast
    
    func isFaster(thanSpeed speed: Speed) -> Bool {
        if self.hashValue >= speed.hashValue {
            return true
        }
        return false
    }
}

enum Diet {
    case meatEater
    case vegetarian
}

enum Sex {
    case male
    case female
}

class Trex {
    var speed: Speed = .fast
    let diet: Diet = .meatEater
    let name: String
    let sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        if self.speed.hashValue >= trex.speed.hashValue {
            return true
        }
        return false
    }
    
    func eat(otherTrex trex: Trex) {
        if self.isFaster(thanTrex: trex) {
            trex.isAlive = false
        }
    }
    
}
