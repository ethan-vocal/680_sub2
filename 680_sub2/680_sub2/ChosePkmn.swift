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
    @State private var isBattleActive: Bool = false
    public var body: some View{
        // added a navigationview stack?? so hopefully navigationlink works
        NavigationView{
        VStack {
            Text("Choose your Pokemon !")
                .font(.title)
                .padding()
            Image("CharmanderIcon")
                .resizable()
                // the icon was way too big, i couldnt see my start battle button
                // this resizes the icon ot fit.
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
        }
        Spacer()
        // the button to proceed to next view
        // according to https://developer.apple.com/documentation/swiftui/navigationlink
        //  ^ People click or tap a navigation link to present a view inside a NavigationStack or NavigationSplitView
        // do i need to include a NavigationView as well ?
        HStack {
            Spacer()
            
            // that means i need to have arguments for BattleView() if I added
            // let userPokemon : Pokemon and
            // let opponentPokemon : Pokemon
            
            // current error: missing arugments for parameters
            NavigationLink(destination: BattleView(),
            isActive: $isBattleActive,
            label: {
            Text("Start Battle")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            })
                .padding()
            }
        }.navigationTitle("Pokemon Selection")
    }
}
