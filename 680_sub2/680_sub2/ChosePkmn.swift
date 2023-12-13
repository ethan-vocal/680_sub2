//
//  ChosePkmn.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation
import SwiftUI


// role: to have a user select a pokemon icon to use in battle, and then have them hit another button to start the battle

public struct ChosePkmn: View {
    // to hold the data for Pokemon
    @State private var selectedPokemon: Pokemon?
    // helper for NavigationLink
    @State private var isBattleActive: Bool = false
    public var body: some View{
        
        
        // added a navigationview stack?? so hopefully navigationlink works
        NavigationView{
        VStack {
            Text("Choose your Pokemon !")
                .font(.title)
                .padding()
            
            // according to https://developer.apple.com/documentation/swiftui/lazyvgrid
            // we use lazyvgrid to display vertical collection of views
            LazyVGrid(columns: Array(repeating: GridItem(), count: 2)) {
                ForEach(Pokemon.allCases, id: \.self) { pokemon in
                    // now lets try to add another navigation link. this time on tap we change the selectedPokemon to the corresponding pokemon
                    NavigationLink(
                        destination: BattleView(userPokemon: pokemon, opponentPokemon: Pokemon.allCases.randomElement() ?? .pikachu),
                            isActive: .constant(false),
                            label: {
                                Image(pokemon.imageName)
                                    // reusing the charmander icon code
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                    .onTapGesture {
                                        selectedPokemon = Pokemon.charmander
                                        //print("debug u selected a pokemon")
                                    }
                            })
                }
            }
            // the button to proceed to next view
            // according to https://developer.apple.com/documentation/swiftui/navigationlink
            //  ^ People click or tap a navigation link to present a view inside a NavigationStack or NavigationSplitView
            // do i need to include a NavigationView as well ?
            Spacer()
            
            HStack {
                Spacer()
                
                // that means i need to have arguments for BattleView() if I added
                // let userPokemon : Pokemon and
                // let opponentPokemon : Pokemon
                
                
                // lets set the opponent to have a random pokemon. thanks to enum, we can use .allCases.RandomElement ,, for default value i will set it to Pikachu.
                // current error: missing arugments for parameters
                NavigationLink(destination: BattleView(userPokemon: selectedPokemon ?? .pikachu, opponentPokemon: Pokemon.allCases.randomElement() ?? .pikachu),
                isActive: $isBattleActive,
                label: {
                Text("Start Battle")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                //    print("debug, enter new phase")
                })
                    .padding()
                }
            }.navigationTitle("Pokemon Selection")
        }
    }
}
