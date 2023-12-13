//
//  Moveset.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation

// components of a Move: name + damage_range
struct Move{
    let name: String
    let damageRange: ClosedRange<Double>
    
}

// according to: https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions/

// we can use extensions to pre-Define instance methods for the moves

extension Move {
    static let ember = Move(name: "Ember", damageRange: 8...14)
    static let metalClaw = Move(name: "Metal Claw", damageRange: 10...15)
    static let flamethrower = Move(name: "Flamethrower", damageRange: 12...15)
    static let dragonRage = Move(name: "Dragon Rage", damageRange: 10...12)
}
