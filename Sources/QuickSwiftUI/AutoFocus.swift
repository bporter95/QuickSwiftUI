//
//  AutoFocus.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

@available(iOS 15.0, *)
struct AutoFocus: ViewModifier {
    @FocusState var focus: Bool
    
    func body(content: Content) -> some View {
        content
            .focused($focus)
            .onAppear {
                focus = true
            }
    }
}

extension View {
    /// AutoFocus a TextField when `onAppear` is called
    public func autoFocus() -> some View {
        Group {
            if #available(iOS 15.0, *) {
                self.modifier(AutoFocus())
            } else {
                self
            }
        }
    }
}
