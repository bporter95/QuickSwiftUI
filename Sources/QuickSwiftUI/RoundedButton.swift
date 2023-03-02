//
//  RoundedButton.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

/// Customizable button similar to style `.bordered`
/// - Parameter bgColor: Button background color
/// - Parameter fgColor: Button foreground color
/// - Parameter radius: Button corner radius
public struct RoundedButton: ButtonStyle {
    var bgColor: Color = .secondarySystemBackground
    var fgColor: Color = .label
    var radius: CGFloat = 10
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(bgColor)
            .cornerRadius(radius)
            .padding(.horizontal)
            .foregroundColor(fgColor)
    }
}
