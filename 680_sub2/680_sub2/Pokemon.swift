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
    
    
}
