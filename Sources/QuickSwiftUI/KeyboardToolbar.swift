//
//  File.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

extension View {
    
    /// Requires iOS 15.0+
    /// Add a done button to the currently focused text field
    public func keyboardDoneButton() -> some View {
        Group {
            if #available(iOS 15.0, *) {
                self.toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Done") {
                            UIApplication.shared.endEditing()
                        }
                    }
                }
            } else {
                self
            }
        }
    }
}

extension UIApplication {
    // Dismiss keyboard without access to the FocusState
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
