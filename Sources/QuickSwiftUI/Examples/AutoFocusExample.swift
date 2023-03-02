//
//  AutoFocusExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct AutoFocusExample: View {
    @State private var text = ""
    
    var body: some View {
        TextField("Name", text: $text)
            .autoFocus()
    }
}

struct AutoFocusExample_Previews: PreviewProvider {
    static var previews: some View {
        Form {
            AutoFocusExample()
        }
    }
}
