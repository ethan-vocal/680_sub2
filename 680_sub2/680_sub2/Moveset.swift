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
    
    // charmander
    static let ember = Move(name: "Ember", damageRange: 8...14)
    static let metalClaw = Move(name: "Metal Claw", damageRange: 10...15)
    static let flamethrower = Move(name: "Flamethrower", damageRange: 12...15)
    static let dragonRage = Move(name: "Dragon Rage", damageRange: 10...12)
    
    // now that i got the chosepkmn view to work, lets finsh up the moves
    // pikachu
    static let voltTackle = Move(name: "Volt Tackle", damageRange: 0...35)
    static let quickAttack = Move(name: "Quick Attack", damageRange: 8...12)
    static let thunderbolt = Move(name: "Thunderbolt", damageRange: 15...20)
    static let ironTail = Move(name: "Iron Tail", damageRange: 12...18)
    
    // bulbasaur
    static let seedBomb = Move(name: "Seed Bomb", damageRange: 8...16)
    static let vineWhip = Move(name: "Vine Whip", damageRange: 7...10)
    static let razorLeaf = Move(name: "Razor Leaf", damageRange: 10...12)
    static let solarBeam = Move(name: "Solar Beam", damageRange: 5...50)
    
    // squirtle
    static let skullBash = Move(name: "Skull Bash", damageRange: 4...20)
    static let waterGun = Move(name: "Water Gun", damageRange: 8...12)
    static let hydroPump = Move(name: "Hydro Pump", damageRange: 5...50)
    static let bite = Move(name: "Bite", damageRange: 12...18)
    
    // jigglypuff
    static let sing = Move(name: "Sing", damageRange: 6...10)
    static let pound = Move(name: "Pound", damageRange: 5...13)
    static let doubleSlap = Move(name: "Double Slap", damageRange: 15...20)
    static let hyperBeam = Move(name: "Hyper Beam", damageRange: 5...60)
    
    // dratini
    static let dragonRush = Move(name: "Dragon Rush", damageRange: 10...15)
    static let screech = Move(name: "Screech", damageRange: 7...10)
    static let outrage = Move(name: "Outrage", damageRange: 5...50)
    static let iceBeam = Move(name: "Ice Beam", damageRange: 6...20)
}
