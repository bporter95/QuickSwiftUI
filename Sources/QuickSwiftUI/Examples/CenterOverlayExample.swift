//
//  CenterOverlayExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI


struct CenterOverlayExample: View {
    
    @State private var noResults = true
    
    var body: some View {
        VStack {
            List {
                
            }
        }
        .overlay(text: "There are no results", show: noResults)
    }
}

struct CenterOverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        CenterOverlayExample()
    }
}
