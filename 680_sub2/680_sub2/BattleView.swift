//
//  BattleView.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation
import SwiftUI

// perhaps a feature to add is playing a battle song through this view.
// i also need to implement a way to show a healthbar
public struct BattleView: View {
    // i completely forgot to add health into the pokemon, so for simplicity sake ill define the healths here lol
    @State private var userHealth: Double = 200
    @State private var opponentHealth: Double = 200

    // to pass down the value into BattleView
    // now we have the pokemon info from last view.
    let userPokemon : Pokemon
    let opponentPokemon : Pokemon
    public var body: some View{
    
        VStack{
            // based off my sketch, we would want to use a HStack for the layout.
            
            // the user pokemon display
            HStack{
                Spacer()
                Image(userPokemon.imageName)
                // same as prev view. i want to keep it consistent
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
                    // a vstack to display the name / currentHealth / healthBar
                    VStack{
                        // name
                        Text("You: \(userPokemon.rawValue)")
                            .font(.headline)
                            .padding()
                    
                        // currentHealth
                        Text("\(Int(userHealth))/200")
                            .font(.subheadline)
                            // i had to set it to black bc the default white was not showing
                            .foregroundColor(.black)
                            .padding()
                    
                        // healthBar
                    
                    }
                    .padding()
                    Spacer()
                }
            // now time for the opponent pokemon display. same logic as display user
            HStack{
                Spacer()
                // opp icon
                Image(opponentPokemon.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
                VStack{
                    // opp name
                    Text("BOT: \(opponentPokemon.rawValue)")
                        .font(.headline)
                        .padding()
                    // opp health
                    Text("\(Int(userHealth))/200")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding()
                    // insert healthbar
                }
                .padding()
                Spacer()
            }
        }
    }
}
