//
//  FullWidth.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

extension View {
    /// Wrap the current view in a HStack that spread to fill the width
    public func fullWidth() -> some View {
        return HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
