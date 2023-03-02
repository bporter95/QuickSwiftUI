//
//  CenterOverlay.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

struct CenterOverlay: ViewModifier {
    var text: String
    var show: Bool
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content.overlay(alignment: .center, content: overlayContent)
        } else {
            content.overlay(overlayContent(), alignment: .center)
        }
    }
    
    private func overlayContent() -> some View {
        Group {
            if show {
                Text(text)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

extension View {
    /// Overlay text at the center of a view when a condition is met
    /// - Parameter text: Text to display when `show` is true
    /// - Parameter show: Determines whether `text` should be overlayed
    public func overlay(text: String, show: Bool) -> some View {
        return self.modifier(CenterOverlay(text: text, show: show))
    }
}
