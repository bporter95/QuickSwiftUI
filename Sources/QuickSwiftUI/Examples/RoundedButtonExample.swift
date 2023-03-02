//
//  RoundedButtonExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct RoundedButtonExample: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Basic") {
                
            }
            .buttonStyle(RoundedButton())
            
            
            Button("Advanced") {
                
            }
            .buttonStyle(RoundedButton(
                bgColor: .red,
                fgColor: .white,
                radius: 20
            ))
        }
    }
}

struct RoundedButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButtonExample()
    }
}
