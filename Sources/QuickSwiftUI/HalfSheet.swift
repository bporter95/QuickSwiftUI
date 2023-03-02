//
//  HalfSheet.swift
//  
//
//  Created by Ben Porter on 3/2/23.
//

import SwiftUI

extension View {
    /// Present a view as a half sheet with a custom height
    /// Only useful on iOS 16.0+
    public func sheetWithHeight(height: CGFloat) -> some View {
        if #available(iOS 16.0, *) {
            return self.presentationDetents([.height(height)])
        } else {
            return self
        }
    }

    /// Present a view as a half sheet
    /// Only useful on iOS 16.0+
    public func halfSheet() -> some View {
        if #available(iOS 16.0, *) {
            return self.presentationDetents([.medium])
        } else {
            return self
        }
    }
}
