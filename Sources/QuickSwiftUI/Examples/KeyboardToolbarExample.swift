//
//  KeyboardToolbarExample.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct KeyboardToolbarExample: View {
    var body: some View {
        Form {
            TextField("Name", text: .constant(""))
                .keyboardDoneButton()
        }
    }
}

struct KeyboardToolbarExample_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardToolbarExample()
    }
}
