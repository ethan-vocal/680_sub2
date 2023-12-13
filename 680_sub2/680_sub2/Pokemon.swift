//
//  Pokemon.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation

// i chose enum > class because of the amount of data i am going to be storing,, also wouldnt storing the filepath not into a string easier ? https://developer.apple.com/documentation/swift/rawrepresentable/rawvalue-swift.property states that i can use rawData to hold any values. ill try this out


// will contain file path , array of moves ?,name ?
enum Pokemon: String, CaseIterable{
    case charmander
    case bulbasaur
    case squirtle
    case pikachu
    case dratini
    case jigglypuff
    case snorlax
    // if theres a way to attach the "Image("CharmanderIcon") to "charmander" using this method
    var imageName: String {
        return self.rawValue
    }
    
    var Moveset: [Move] {
        switch self{

        // first error - Type Move has no member for all the names
        
        // FOR NOW ALL PKMN HAS SAME MOVES AS CHARMANDER
        
        // now we can change the values for each pokemon move now.
        case .charmander:
            return[.ember, .metalClaw, .flamethrower, .dragonRage]
        case .bulbasaur:
            return[.seedBomb, .vineWhip, .razorLeaf, .solarBeam]
        case .squirtle:
            return[.skullBash, .waterGun, .hydroPump, .bite]
        case .pikachu:
            return[.voltTackle, .quickAttack, .thunderbolt, .ironTail]
        case .dratini:
            return[.dragonRush, .screech, .outrage, .iceBeam]
        case .jigglypuff:
            return[.sing, .pound, .doubleSlap, .hyperBeam]
        case .snorlax:
            return[.snore, .hyperBeam, .dragonRush, .takeDown]
        }
    }
    
}
