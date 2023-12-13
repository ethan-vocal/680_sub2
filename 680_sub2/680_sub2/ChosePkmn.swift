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
        
        VStack {
            Text("Choose your Pokemon !")
                .font(.largeTitle)
                .padding()
            Image("CharmanderIcon")
                .resizable()
                .padding()
        }
        
        // the button to proceed to next view
        HStack {
            Spacer()
            NavigationLink(destination: BattleView(),
            isActive: $isBattleActive,
            label: {
            Text("Start Battle")
                .padding()
        })
            .padding()
        }.navigationTitle("Pokemon Selection")
    }
}
