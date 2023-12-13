//
//  HealthBar.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation
import SwiftUI

// in this file, it takes in the health number and based off the number, will update
// the health bar + color.

// lets code the health
struct HealthBar: View {
    
    // i used @binding - refrence to data, not trying to dupe / manipulate the data
    // according to: https://www.appypie.com/binding-swiftui-how-to
    
    @Binding var health: Double
    
    var body: some View{
        
        // according to: https://developer.apple.com/documentation/swiftui/geometryreader
        // i can use a geometryreader - the description fits what i need to do: "A container view that defines its content as a function of its own size and coordinate space"
        // the healthbar will constantly update and it needs its own size and space.
        GeometryReader { geometry in
            
            ZStack(alignment: .leading){
                // base rectangle, empty grey.
                Rectangle()
                    .frame(width: geometry.size.width, height: 20)
                    .opacity(0.1)
                    .foregroundColor(.gray)

                // creating a rectangle for the repaining health + corresponding color
                Rectangle()
                    // uses CGFloat - Float is not flexible, whereas CGFloat adapts
                    .frame(width: min(CGFloat(health) / 100 * geometry.size.width, geometry.size.width), height: 20)
                    .foregroundColor(healthColor)
            }
        }
    }
    private var healthColor: Color {
        // basic logic for the color
        let percentage = health / 100
        
        // if its over 50% or .5, then its green
        if percentage > 0.5 {
            return .green
            
            // i didnt know how to do > 0.25 && < 0.5 in 1 line so i did it in 2
            // so ifts been 25% - 50% its yellow
        } else if percentage > 0.25 {
            if percentage < 0.5 {
                return .yellow
            }
        }
        // if nothing checks out, then its red
        return .red
    }
}
