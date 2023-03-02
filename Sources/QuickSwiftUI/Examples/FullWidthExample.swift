//
//  FullWidthExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct FullWidthExample: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Fill It!")
                .fullWidth()
        }
        .background(Color.gray)
        .padding(.horizontal)
        .foregroundColor(.white)
    }
}

struct FullWidthExample_Previews: PreviewProvider {
    static var previews: some View {
        FullWidthExample()
    }
}
