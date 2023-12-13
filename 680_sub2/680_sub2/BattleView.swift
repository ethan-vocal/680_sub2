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

    // to hold what moves are played in the turn
    @State private var currentTurnMessages: [String] = []
    
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
                .padding()
        }.padding()
        
        // display the movelist- should be simple ?
        VStack{
            // create a button for each move in Moveset
            ForEach(userPokemon.Moveset, id: \.name) { move in
                Button(action: {
                   // i have to insert the logic here on button press
                    performMove(move)
                }) {
                    Text(move.name)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                    )
                }.padding(.vertical, 4)
            }
        }
    }
    
    // logic to perform move
    // found my error: no space between _ and move. which is why it kept throwing me errors.
    private func performMove(_ move: Move) {
        // attack damage will be the random between the bounds of damage range of the move
        let userAttackDamage = Double.random(in: move.damageRange)
        
        // subracting the opp health with the damage
        opponentHealth -= userAttackDamage
        
        // add to log
        addMoveMessage("\(userPokemon.rawValue) used \(move.name) and dealt \(Int(userAttackDamage)) damage!")
        
        // checks if anyone wins
        checkGameResult()
        
        // opps move
        
        // random move from their pokemon, default will be tackle
        let opponentMove = opponentPokemon.Moveset.randomElement() ?? Move(name: "tackle", damageRange: 5...10)
        
        // getting the attack damage, same as earlier
        let opponentAttackDamage = Double.random(in: opponentMove.damageRange)
        
        // subtracting user health with the damage
        userHealth -= opponentAttackDamage
        
        // add to log
        addMoveMessage("\(opponentPokemon.rawValue) used \(opponentMove.name) and dealt \(Int(opponentAttackDamage)) damage.")

        // cecks if anyone wins again
        checkGameResult()
    }
    // logic to help showcase what move is played
    private func addMoveMessage(_ message: String) {
        
    }
    // i need a way to check if the game is over
    private func checkGameResult() {
        
    }
}
