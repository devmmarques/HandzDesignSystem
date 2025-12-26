//
//  DSColor+Icon.swift.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//


import SwiftUI

@available(macOS 10.15, *)
public extension DSColor {

    enum Icon {
        public static let primary = Color("color.icon.primary", bundle: .main)
        public static let secondary = Color("color.icon.secondary", bundle: .main)
        public static let disabled = Color("color.icon.disabled", bundle: .main)
        public static let inverse = Color("color.icon.inverse", bundle: .main)
    }
}
