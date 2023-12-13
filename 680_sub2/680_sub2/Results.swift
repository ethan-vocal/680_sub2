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
    
    // hodls value whether or not to move to ChosePkmn sceen
    @State private var moveToChosePkmn = false
    
    var body: some View{
        NavigationView{
            // making the whole thing scrollable
            ScrollView{
                VStack{
                    // title
                    Text("GAME RESULTS")
                        .font(.title)
                        .padding()
                    
                    // displaying the winner (result)
                    Text("WINNER: \(result)")
                        .font(.headline)
                        .padding()
                    
                    // displaing your health
                    Text("Your Remaining Health: \(userRemHealth)/200")
                        .font(.subheadline)
                        .padding()
                    
                    // displaying opp health
                    Text("Opponent Remaining Health: \(oppRemHealth)/200")
                        .font(.subheadline)
                        .padding()
                    
                    // displaying the logs
                    VStack(alignment: .leading) {
                        Text("Move Log:")
                            .font(.headline)
                            .padding(.bottom, 4)
                        
                        // very similar to the log call in battleview
                        ForEach(moveLog, id: \.self) { move in
                            Text(move)
                                .padding(.vertical, 2)
                        }
                    }
                    .padding()

                    // Battle Again button
                    Button(action: {
                        // on button press, value for if we move is true
                        moveToChosePkmn = true
                    }) {
                        Text("Battle Again")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    // navigate back to ChosePkmn screen
                        NavigationLink(
                            destination: ChosePkmn(),
                            isActive: $moveToChosePkmn
                        )   {
                        }
                    }
                .navigationTitle("Results")
            }
        }
    }
}

