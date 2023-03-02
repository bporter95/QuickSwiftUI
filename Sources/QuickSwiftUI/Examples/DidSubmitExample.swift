//
//  DidSubmitExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct DidSubmitExample: View {
    @State private var didSubmit = false
    
    var body: some View {
        Form {
            TextField("Name", text: .constant(""))
                .didSubmit {
                    didSubmit = true
                }
            
            if didSubmit {
                Text("We did submit!")
            }
        }
    }
}

struct DidSubmitExample_Previews: PreviewProvider {
    static var previews: some View {
        DidSubmitExample()
    }
}
