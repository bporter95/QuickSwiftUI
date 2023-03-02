//
//  HalfSheetExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct HalfSheetExample: View {
    @State private var showingHalf = false
    @State private var showingCustom = false
    
    var body: some View {
        VStack {
            List {
                Button("Half") {
                    showingHalf.toggle()
                }
                Button("Custom") {
                    showingCustom.toggle()
                }
            }
        }
        .sheet(isPresented: $showingHalf) {
            Text("Half Sheet")
                .halfSheet()
        }
        .sheet(isPresented: $showingCustom) {
            Text("Custom Sheet")
                .sheetWithHeight(height: 100)
        }
    }
}

struct HalfSheetExample_Previews: PreviewProvider {
    static var previews: some View {
        HalfSheetExample()
    }
}
