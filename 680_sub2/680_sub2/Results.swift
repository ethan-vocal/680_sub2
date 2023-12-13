//
//  Results.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation
import SwiftUI

// ill save the background audio for last. time to work on Results
struct Results: View {
    
    // as seen in sketch, this is what we need from battleview. i have to edit the Results() call in battleview now
    let result: String
    let userRemHealth: Double
    let oppRemHealth: Double
    let moveLog: [String]
    
    
    var body: some View{
        NavigationView{
            // making the whole thing scrollable
            ScrollView{
                VStack{
                    Text("GAME RESULTS")
                        .font(.title)
                        .padding()
                    Text("WINNER: \(result)")
                        .font(.headline)
                        .padding()
                    Text("Your Remaining Health: \(userRemHealth)/200")
                        .font(.subheadline)
                        .padding()
                    Text("Opponent Remaining Health: \(oppRemHealth)/200")
                        .font(.subheadline)
                        .padding()
                }
            }
        }
    }
}
