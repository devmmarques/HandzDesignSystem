//
//  DSColor+Fill.swift
//  HandzDesignSystem
//
//  Created by Marco Henrique on 26/12/25.
//

import SwiftUI

@available(macOS 10.15, *)
public extension DSColor {

    enum Fill {

        // MARK: - Brand
        public static let main = Color("color.fill.main", bundle: .module)
        public static let secondary = Color("color.fill.secondary", bundle: .module)
        public static let transparent = Color("color.fill.transparent", bundle: .module)

        // MARK: - Neutral
        public static let neutralLowest = Color("color.fill.neutral.lowest", bundle: .module)
        public static let neutralLow = Color("color.fill.neutral.low", bundle: .module)
        public static let neutralHigh = Color("color.fill.neutral.high", bundle: .module)

        // MARK: - State
        public static let success = Color("color.fill.success", bundle: .module)
        public static let warning = Color("color.fill.warning", bundle: .module)
        public static let error = Color("color.fill.error", bundle: .module)
        
        public static let surface = Color("color.fill.surface", bundle: .module)

        // MARK: - Disabled
        public static let disabled = Color("color.fill.disabled", bundle: .module)
    }
}
