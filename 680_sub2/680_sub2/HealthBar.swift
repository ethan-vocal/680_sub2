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
        ZStack{
            
        }
    }
    private var healthColor: Color {
        return .red
    }
}
