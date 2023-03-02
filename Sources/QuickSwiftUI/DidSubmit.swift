//
//  DidSubmitModifier.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct DidSubmitModifier: ViewModifier {
    var action: () -> Void
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content.onSubmit(action)
        } else {
            content
        }
    }
}

extension View {
    /// Backwards compilable implementation of `onSubmit`
    /// - Parameter action: action to be called when return key is pressed
    public func didSubmit(_ action: @escaping () -> Void) -> some View {
        return modifier(DidSubmitModifier(action: action))
    }
}
